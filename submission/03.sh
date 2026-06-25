# Write the bitcoin cli command to get the bitcoin node latest block height 
bitcoin-cli getblockchaininfo | grep "blocks" | cut -d ':' -f 2 | tr -d ' '