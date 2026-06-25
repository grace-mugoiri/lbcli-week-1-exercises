# Write the bitcoin cli command to get the bitcoin node latest block height 
bitcoin-cli -regtest getblockchaininfo | jq -r '.blocks'