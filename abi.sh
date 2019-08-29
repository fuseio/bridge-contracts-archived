#!/usr/bin/env bash

if [ -d abis ]; then
  rm -rf abis
fi

mkdir abis

./node_modules/node-jq/bin/jq '.abi' build/contracts/ForeignBridgeNativeToErc.json > abis/ForeignBridgeNativeToErc.abi.json
./node_modules/node-jq/bin/jq '.abi' build/contracts/HomeBridgeNativeToErc.json > abis/HomeBridgeNativeToErc.abi.json
./node_modules/node-jq/bin/jq '.abi' build/contracts/ForeignBridgeValidators.json > abis/ForeignBridgeValidators.abi.json

./node_modules/node-jq/bin/jq '.abi' build/contracts/HomeBridgeErcToErc.json > abis/HomeBridgeErcToErc.abi.json
./node_modules/node-jq/bin/jq '.abi' build/contracts/ForeignBridgeErcToErc.json > abis/ForeignBridgeErcToErc.abi.json

./node_modules/node-jq/bin/jq '.abi' build/contracts/HomeBridgeErcToNative.json > abis/HomeBridgeErcToNative.abi.json
./node_modules/node-jq/bin/jq '.abi' build/contracts/ForeignBridgeErcToNative.json > abis/ForeignBridgeErcToNative.abi.json

./node_modules/node-jq/bin/jq '.abi' build/contracts/EternalStorageProxy.json > abis/EternalStorageProxy.abi.json
./node_modules/node-jq/bin/jq '.abi' build/contracts/BridgeValidators.json > abis/BridgeValidators.abi.json
./node_modules/node-jq/bin/jq '.abi' build/contracts/BridgeMapper.json > abis/BridgeMapper.abi.json
./node_modules/node-jq/bin/jq '.abi' build/contracts/ERC677BridgeToken.json > abis/ERC677BridgeToken.abi.json

./node_modules/node-jq/bin/jq '.abi' build/contracts/ForeignBridgeFactory.json > abis/ForeignBridgeFactory.abi.json
./node_modules/node-jq/bin/jq '.abi' build/contracts/HomeBridgeFactory.json > abis/HomeBridgeFactory.abi.json
