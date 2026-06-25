# Create a wallet with the name "builderswallet".
bitcoin-cli -regtest createwallet "builderswallet" | jq -r '.name'