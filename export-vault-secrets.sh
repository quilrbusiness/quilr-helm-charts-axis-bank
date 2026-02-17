#!/bin/bash

# Vault environment setup
export VAULT_ADDR="https://50.17.208.178:8200"
export VAULT_TOKEN="hvs.I8jnwm62RKUMpc3LrlE0iwsd"
export VAULT_SKIP_VERIFY=true

# Output YAML file
OUTPUT_FILE="vault_secrets_prod_aws_script_formatted.yaml"
TMP_JSON="temp_vault_secrets.json"

# Secret paths to extract
SECRET_PATHS=("secret/quilr-common-config-vault")

# Start with empty JSON object
echo '{}' > "$TMP_JSON"

for path in "${SECRET_PATHS[@]}"; do
    echo "Fetching secrets from Vault path: $path"

    # Get secret and check validity
    vault kv get -format=json "$path" > vault_data.json 2> vault_error.log
    if ! jq empty vault_data.json >/dev/null 2>&1; then
        echo "❌ Failed to fetch or parse secrets from $path"
        cat vault_error.log
        continue
    fi

    # Extract `.data.data` for KV v2
    jq '.data.data' vault_data.json > vault_entry.json

    # Merge into main JSON
    jq --arg path "$path" --slurpfile val vault_entry.json '. + {($path): $val[0]}' "$TMP_JSON" > tmp && mv tmp "$TMP_JSON"
done

# Convert to YAML
echo "Converting JSON to YAML..."
yq -P "$TMP_JSON" > "$OUTPUT_FILE"

echo "✅ Secrets exported to $OUTPUT_FILE"
