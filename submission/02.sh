# Write the bitcoin cli command to get the bitcoin node network name
bitcoin-cli -regtest getnetworkinfo | grep "subversion" | cut -d '"' -f 2