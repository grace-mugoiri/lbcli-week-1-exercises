# Check the total amount in the wallet.
# Load the existing "builderswallet" instead of creating a new one
bitcoin-cli -regtest loadwallet "builderswallet" 2>/dev/null || true

# Generate blocks to fund the wallet (regtest allows instant block generation)
# Generate 101 blocks - first 100 go to coinbase, 101st ensures the first 100 mature
bitcoin-cli -regtest generatetoaddress 101 $(bitcoin-cli -regtest -rpcwallet="builderswallet" getnewaddress) > /dev/null 2>&1

# Get the balance of the "builderswallet"
bitcoin-cli -regtest -rpcwallet="builderswallet" getbalance