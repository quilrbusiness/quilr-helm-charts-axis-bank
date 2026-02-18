#!/bin/bash

# Set environment variables for Vault
export VAULT_ADDR="https://127.0.0.1:8200"
export VAULT_TOKEN="<vault-token>"
export VAULT_SKIP_VERIFY=true

# Path to the secrets file (secrets.json)
SECRETS_FILE="secrets.json"

# Check if the secrets file exists
if [ ! -f "$SECRETS_FILE" ]; then
    echo "Secrets file not found!"
    exit 1
fi

# Loop through each Vault path in the secrets file
for path in $(jq -r 'keys[]' $SECRETS_FILE); do
    # Extract the key-value pairs for each path
    secret_data=$(jq -r --arg path "$path" '.[$path] | to_entries | map("\(.key)=\(.value|tostring)") | .[]' $SECRETS_FILE)

    # Prepare the arguments for the vault command
    secret_args=""
    for item in $secret_data; do
        secret_args="$secret_args $item"
    done

    # Insert the secrets into Vault for the specific path
    echo "Inserting secrets for $path..."
    vault kv put "$path" $secret_args

    if [ $? -eq 0 ]; then
        echo "Successfully inserted secrets for $path."
    else
        echo "Failed to insert secrets for $path."
    fi
done