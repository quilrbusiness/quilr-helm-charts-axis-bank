#!/bin/bash
set -euo pipefail

# Requires yq
if ! command -v yq &> /dev/null; then
    echo "❌ yq is required but not installed. Install with:"
    echo "   sudo wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq"
    echo "   sudo chmod +x /usr/bin/yq"
    exit 1
fi

# Directories to ignore
IGNORE_LIST=(
    "quilr-common-config"
    "quilr-vault-config"
    "dlp-common-config"
)

# Print table header
printf "%-40s %-80s %-12s %-15s %-15s\n" \
"CHART" "REPOSITORY" "TYPE" "TAG" "PULL POLICY"
printf "%-40s %-80s %-12s %-15s %-15s\n" \
"----------------------------------------" "--------------------------------------------------------------------------------" "------------" "---------------" "---------------"

for dir in */ ; do
    chart="${dir%/}"

    # Skip if it's in ignore list
    for ignore in "${IGNORE_LIST[@]}"; do
        if [[ "$chart" == "$ignore" ]]; then
            continue 2
        fi
    done

    # Skip any chart ending with "-config"
    if [[ "$chart" == *"-config" ]]; then
        continue
    fi

    # Must have values.yaml
    if [[ ! -f "$dir/values.yaml" ]]; then
        continue
    fi

    values="$dir/values.yaml"

    repo=$(yq '.image.repository' "$values" 2>/dev/null || echo "N/A")
    tag=$(yq '.image.tag' "$values" 2>/dev/null || echo "N/A")
    pull_policy=$(yq '.image.pullPolicy' "$values" 2>/dev/null || echo "N/A")

    # Determine if repo is main or other
    if [[ "$repo" == *"/main/"* ]]; then
        repo_type="main"
    else
        repo_type="other"
    fi

    printf "%-40s %-80s %-12s %-15s %-15s\n" \
        "$chart" "$repo" "$repo_type" "$tag" "$pull_policy"
done