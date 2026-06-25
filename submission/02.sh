# Write the bitcoin cli command to get the bitcoin node network name
bitcoin-cli -regtest getnetworkinfo | jq -r '.network[0].name'