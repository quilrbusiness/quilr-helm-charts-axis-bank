#!/bin/bash
set -e

NAMESPACE="quilr"
WAIT_TIMEOUT=30

echo "Helm upgrade + git pull + restart tool for selected services"
echo "Namespace: $NAMESPACE"
echo "================================================================="

# ------------------------------------------------------------
# Simple git pull at repo root (NO checks, NO flags)
# ------------------------------------------------------------
if [[ -d ".git" ]]; then
  echo "Pulling latest changes from git..."
  git pull
  echo "Git pull completed."
else
  echo "Current directory is not a git repository — skipping git pull."
fi

echo
echo "================================================================="

# ------------------------------------------------------------
# Read services
# ------------------------------------------------------------
if [[ $# -gt 0 ]]; then
  SERVICES=("$@")
  echo " Services provided via arguments:"
  printf "  - %s\n" "${SERVICES[@]}"
else
  echo "Enter service/chart names (space or newline separated)."
  echo "Press ENTER, then CTRL+D when done."
  mapfile -t SERVICES
fi

echo
echo "================================================================="

# ------------------------------------------------------------
# Process services
# ------------------------------------------------------------
for svc in "${SERVICES[@]}"; do
  svc=$(echo "$svc" | xargs)
  [[ -z "$svc" ]] && continue

  echo " Processing: $svc"

  if [[ -d "$svc" && -f "$svc/Chart.yaml" ]]; then

    echo "🔧 Running helm upgrade..."
    if helm upgrade --install "$svc" "./$svc" -n "$NAMESPACE" --create-namespace; then
      echo "Helm upgrade succeeded for $svc"
    else
      echo "Helm upgrade failed for $svc — skipping restart."
      continue
    fi

    # Skip CronJobs
    if kubectl get cronjob "$svc" -n "$NAMESPACE" &>/dev/null; then
      echo "Skipping restart for $svc (detected as CronJob)"
      continue
    fi

    # Restart deployment if exists
    if kubectl get deploy "$svc" -n "$NAMESPACE" &>/dev/null; then
      echo " Restarting deployment for $svc..."
      kubectl rollout restart deploy "$svc" -n "$NAMESPACE"

      echo "Waiting up to $WAIT_TIMEOUT seconds for pods to become Ready..."
      if kubectl rollout status deploy/"$svc" -n "$NAMESPACE" --timeout=${WAIT_TIMEOUT}s; then
        echo " $svc is running successfully."
      else
        echo " $svc pods not ready in ${WAIT_TIMEOUT}s — showing pod status..."
        kubectl get pods -n "$NAMESPACE" -l "app=$svc" || true
      fi
    else
      echo " No deployment found for $svc — skipping restart."
    fi

  else
    echo "Skipping $svc — Chart.yaml not found."
  fi

  echo "-----------------------------------------------------------------"
done

# ------------------------------------------------------------
# Final status command
# ------------------------------------------------------------
echo
echo "Final readiness summary for all updated services:"
echo "================================================================="

FINAL_SERVICES=()
for svc in "${SERVICES[@]}"; do
  svc=$(echo "$svc" | xargs)
  [[ -z "$svc" ]] && continue
  FINAL_SERVICES+=("$svc")
done

if [[ ${#FINAL_SERVICES[@]} -gt 0 ]]; then
  svc_list=$(IFS=,; echo "${FINAL_SERVICES[*]}")

  echo "Service status command:"
  echo "kubectl get pods -A -l \"app in (${svc_list})\""
  echo

  kubectl get pods -A -l "app in (${svc_list})"
else
  echo " No services provided."
fi

echo
echo " Done — git pull, upgrade, restart, and verification complete."
