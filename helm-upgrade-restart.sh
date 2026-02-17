#!/bin/bash

# Namespace in which Helm releases and deployments exist
NAMESPACE="quilr"

# Pull the latest changes from the Git repository
echo "Pulling latest changes from Git..."
git pull
echo "Git pull complete."

# Check if at least one chart name was provided
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 chart-folder-name1 [chart-folder-name2 ...]"
  exit 1
fi

# Loop through each provided chart folder name
for chart in "$@"; do
  echo "Processing chart: $chart"

  # Check if the chart directory exists
  if [ ! -d "$chart" ]; then
    echo "Folder '$chart' does not exist. Skipping."
    continue
  fi

  # Run Helm upgrade with --install to install if it doesn't exist
  echo "Running helm upgrade --install for $chart..."
  helm upgrade --install "$chart" "./$chart" -n "$NAMESPACE"

  # Check if Helm upgrade was successful
  if [ $? -ne 0 ]; then
    echo "Helm upgrade failed for $chart. Skipping rollout restart."
    continue
  fi

  # Restart the corresponding Kubernetes deployment
  echo "Restarting deployment $chart in namespace $NAMESPACE..."
  kubectl rollout restart deployment "$chart" -n "$NAMESPACE"

  echo "Completed processing for $chart"
done
