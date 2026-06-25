# Check the total amount in the wallet.
# Create a wallet with the name "builderswallet".
bitcoin-cli -regtest createwallet "builderswallet" | jq -r '.name'
# Get the balance of the "builderswallet".
bitcoin-cli -regtest -rpcwallet="builderswallet" getbalance