# Check the total amount in the wallet.
# Load the existing "builderswallet" instead of creating a new one
bitcoin-cli -regtest loadwallet "builderswallet" 2>/dev/null || true
# Get the balance of the "builderswallet"
bitcoin-cli -regtest -rpcwallet="builderswallet" getbalance