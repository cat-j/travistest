#!/bin/bash

set -e

ganache-cli --gasLimit 4700000000000000 2> /dev/null 1> /dev/null &
rm -rf build
truffle compile
truffle migrate --reset --network development
truffle test
sleep 10
kill -9 $(lsof -t -i:8545)