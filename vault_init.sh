#!/bin/bash

ROOT_DIR="$(pwd)"
BLOCK=$(cat << 'EOF'
      initContainers:
        - name: wait-for-vault
          image: curlimages/curl:8.5.0
          imagePullPolicy: IfNotPresent
          command:
            - sh
            - -c
            - |
              echo "Waiting for Vault at {{ .Values.vault.addr }}..."
              until curl -k -sSf {{ .Values.vault.addr }}/v1/sys/health; do
                echo "Vault not ready, retrying in 5s..."
                sleep 5
              done
              echo "Vault is ready!"
EOF
)

echo "Scanning for deployment.yaml files..."

find "$ROOT_DIR" -type f -name "deployment.yaml" | while read -r file; do
    echo "Processing: $file"

    # Skip if block already exists
    if grep -q "wait-for-vault" "$file"; then
        echo "  → Block already exists, skipping."
        continue
    fi

    # Insert before containers:
    cp "$file" "$file.bak"

    awk -v block="$BLOCK" '
        /containers:/ && !done {
            print block;
            done=1;
        }
        { print }
    ' "$file.bak" > "$file"

    echo "  → Block inserted ✔"
done

echo "All files processed!"
#find . -name "*.bak" -delete