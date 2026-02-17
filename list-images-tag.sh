#!/bin/bash

BASE_DIR="$HOME/quilr-helm-charts"

echo "📦 Extracting image tags from values.yaml files under $BASE_DIR"
echo "-------------------------------------------------------------"
printf "%-45s | %s\n" "Service Name" "Image Tag"
echo "-------------------------------------------------------------"

# Loop through all values.yaml files
find "$BASE_DIR" -mindepth 2 -maxdepth 2 -name "values.yaml" | while read -r file; do
  service_dir=$(basename "$(dirname "$file")")
  tag=$(awk '/image:/ {in_image=1} in_image && /tag:/ { print $2; in_image=0 }' "$file")

  if [ -n "$tag" ]; then
    printf "%-45s | %s\n" "$service_dir" "$tag"
  else
    printf "%-45s | %s\n" "$service_dir" "⚠️  Not Found"
  fi
done
