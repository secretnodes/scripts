#!/bin/bash
#Configured for ubuntu server 18.04
#Version 0.9 | Jan 31, 2020
#Tested on 8i7BEK & 8i3BEH
#Should work for SGX compatible intel NUCs, Vultr Bare Metal.
#Confirmed working on enigma.co testnet

docker pull parity/parity
sleep 2

mkdir ~/.parity-kovan
sleep 1

docker run -h eth --name eth -p 8546:8546 \
           -v ~/.parity-kovan:/home/parity/.local/share/io.parity.ethereum/ \
           -it parity/parity:stable --chain=kovan \
           --ws-interface=all --ws-origins="all" \
           --base-path /home/parity/.local/share/io.parity.ethereum/