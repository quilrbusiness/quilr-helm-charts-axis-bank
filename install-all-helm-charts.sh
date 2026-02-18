#!/bin/bash

BASE_DIR="$(pwd)"
SKIP_DIR=("services-scale-down-or-in-progress" "dependencies" )
NAMESPACE="quilr"

echo " Switching to base directory: $BASE_DIR"
cd "$BASE_DIR"

# Ensure helm is available
if ! command -v helm &> /dev/null; then
  echo " Helm not installed or not in PATH"
  exit 1
fi

# Function to install chart into shared namespace
install_chart() {
  local dir="$1"
  echo " Installing Helm chart: $dir into namespace $NAMESPACE"

  if helm upgrade --install "$dir" "./$dir" --namespace "$NAMESPACE" --create-namespace; then
    echo " Successfully installed $dir"
  else
    echo " Failed to install $dir. Continuing with next chart..."
  fi
}

# Install quilr-common-config
if [ -d "quilr-common-config" ]; then
  install_chart "quilr-common-config"
fi

# Install dlp-common-config
if [ -d "dlp-common-config" ]; then
  install_chart "dlp-common-config"
fi

# Install all other charts
for dir in */ ; do
  dir="${dir%/}"
  if [[ "$dir" == "quilr-common-config" || "$dir" == "dlp-common-config" || "$dir" == "$SKIP_DIR" ]]; then
    continue
  fi

  if [[ -f "$dir/Chart.yaml" ]]; then
    install_chart "$dir"
  else
    echo "⏭ Skipping $dir (no Chart.yaml)"
  fi
done

echo "All Helm charts attempted in namespace '$NAMESPACE'. Check logs for any failed installs."
