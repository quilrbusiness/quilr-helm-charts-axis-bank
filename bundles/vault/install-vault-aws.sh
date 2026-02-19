#!/bin/bash
set -euo pipefail

# -----------------------------------------------------------------------------
# QUILR Vault Install Script
# -----------------------------------------------------------------------------

VAULT_OPERATOR_CHART="1.23.0"
VAULT_WEBHOOK_CHART="1.22.0"

NAMESPACE="quilr"
WEBHOOK_NAMESPACE="vault-infra"



ECR_BASE="975050335771.dkr.ecr.ap-south-1.amazonaws.com/bitnamilegacy/quilr-tp"
VAULT_OPERATOR_IMAGE="${ECR_BASE}"
VAULT_OPERATOR_TAG="vault-operator-1.23.0"
WEBHOOK_IMAGE="${ECR_BASE}"
WEBHOOK_TAG="vault-secrets-webhook-1.22.0"
BANK_VAULTS_IMAGE="${ECR_BASE}"
BANK_VAULTS_TAG="bank-vaults-1.32.0"
VAULT_IMAGE="${ECR_BASE}"
VAULT_TAG="vault-1.14.8"
UBUNTU_IMAGE="${ECR_BASE}"
UBUNTU_TAG="ubuntu-bionic"


echo "Checking prerequisites..."
kubectl version >/dev/null
helm version >/dev/null
echo " kubectl and helm are available."

echo " Ensuring namespaces..."
kubectl get ns "${NAMESPACE}" >/dev/null 2>&1 || kubectl create ns "${NAMESPACE}"
kubectl get ns "${WEBHOOK_NAMESPACE}" >/dev/null 2>&1 || kubectl create ns "${WEBHOOK_NAMESPACE}"
echo " Namespaces verified."

wait_for_pod() {
  local label=$1 ns=$2
  echo " Waiting for pods with label '${label}' in ns '${ns}'..."
  kubectl wait --for=condition=Ready pod -l "${label}" -n "${ns}" --timeout=300s || true
  echo " Pods for ${label} ready."
}


echo " Installing Vault Operator..."

helm upgrade --install vault-operator \
  "./vault-operator-${VAULT_OPERATOR_CHART}.tgz" \
  -n "${NAMESPACE}" \
  --set image.repository="${VAULT_OPERATOR_IMAGE}" \
  --set image.tag="${VAULT_OPERATOR_TAG}" \
  --set image.pullPolicy="IfNotPresent"

wait_for_pod "app.kubernetes.io/name=vault-operator" "${NAMESPACE}"
echo " Vault Operator deployed."

echo "🔐 Applying RBAC..."
kubectl apply -f "./rbac.yaml" -n "${NAMESPACE}"
echo " RBAC applied."


echo " Applying Vault Custom Resource (Raft)..."
kubectl apply -f "./cr-raft.yaml" -n "${NAMESPACE}" >/dev/null
wait_for_pod "app.kubernetes.io/name=vault" "${NAMESPACE}"
wait_for_pod "app.kubernetes.io/name=vault-configurator" "${NAMESPACE}"
echo " Vault Raft Cluster running."

echo " Exporting Vault credentials..."

# Wait for vault-tls secret
echo " Waiting for vault-tls secret..."
for i in {1..60}; do
  if kubectl get secret vault-tls -n "${NAMESPACE}" >/dev/null 2>&1; then
    echo " vault-tls secret found."
    break
  fi
  echo " Waiting... (${i})"
  sleep 5
done

# Wait for vault-unseal-keys secret
echo " Waiting for vault-unseal-keys secret..."
for i in {1..60}; do
  if kubectl get secret vault-unseal-keys -n "${NAMESPACE}" >/dev/null 2>&1; then
    echo " vault-unseal-keys secret found."
    break
  fi
  echo " Waiting... (${i})"
  sleep 5
done


echo " Waiting for vault-root key to be populated..."
for i in {1..60}; do
  VAULT_TOKEN=$(kubectl get secret vault-unseal-keys -n "${NAMESPACE}" -o jsonpath="{.data.vault-root}" 2>/dev/null || true)
  if [[ -n "$VAULT_TOKEN" ]]; then
    echo " vault-root key populated."
    break
  fi
  echo " Waiting for vault-root data... (${i})"
  sleep 5
done


kubectl get secret vault-tls -n "${NAMESPACE}" -o jsonpath="{.data.ca\.crt}" | base64 --decode > "$PWD/vault-ca.crt"
export VAULT_CACERT="$PWD/vault-ca.crt"
echo " CA cert saved: vault-ca.crt"


if [[ -n "$VAULT_TOKEN" ]]; then
  echo "$VAULT_TOKEN" | base64 --decode > "$PWD/vault-root-token.txt"
  chmod 600 "$PWD/vault-root-token.txt"
  echo " Root token saved: vault-root-token.txt"
else
  echo " vault-root key still empty after timeout."
fi



echo "Deploying Vault Secrets Webhook..."
kubectl label namespace "${WEBHOOK_NAMESPACE}" name="${WEBHOOK_NAMESPACE}" --overwrite >/dev/null

helm upgrade --install vault-secrets-webhook \
  "./vault-secrets-webhook-${VAULT_WEBHOOK_CHART}.tgz" \
  -n "${WEBHOOK_NAMESPACE}" \
  --set image.repository="${WEBHOOK_IMAGE}" \
  --set image.tag="${WEBHOOK_TAG}" \
  --set vaultEnv.repository="975050335771.dkr.ecr.ap-south-1.amazonaws.com/bitnamilegacy/quilr-tp" \
  --set vaultEnv.tag="vault-env-1.22.0" \
  --set image.pullPolicy="IfNotPresent" >/dev/null

wait_for_pod "app.kubernetes.io/name=vault-secrets-webhook" "${WEBHOOK_NAMESPACE}"

echo "Vault Secrets Webhook deployed."


echo
echo " Vault Deployment Complete!"
echo "-----------------------------------------------"
echo "Namespace: ${NAMESPACE}"
echo "Webhook Namespace: ${WEBHOOK_NAMESPACE}"
ROOT_TOKEN=$(cat vault-root-token.txt 2>/dev/null || echo "Unavailable")
echo " Root Token: ${ROOT_TOKEN}"
echo "CA Cert: vault-ca.crt"
echo "-----------------------------------------------"
echo " Vault Operator, Raft Cluster, and Webhook are ready."



