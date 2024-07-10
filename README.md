POA Network with besu client


## Prerequisites

- node
- docker
- docker-compose

## Create network en expose API JSON-RPC
docker-compose up 

## Install modules for web3
npm install

## Execute transaction
node sendTransaction.js

## View in dashboard
check blocks and transacciojn with chainlens dashboard:

set ip  API JSON-RPC

https://github.com/web3labs/chainlens-free.git 


docker run consensys/teku:latest --help


teku --network=holesky \
--eth1-endpoint=http://localhost:8545 \
--validators-external-signer-public-keys=0xa99a...e44c,0xb89b...4a0b \
--validators-external-signer-url=http://localhost:9000

teku --network=2018 \
--eth1-endpoint=http://localhost:8545 \
--validators-external-signer-public-keys=0xa99a...e44c,0xb89b...4a0b \
--validators-external-signer-url=http://localhost:9000

curl -X GET http://localhost:9000/upcheck

curl -X POST http://localhost:9000/reload

curl -X GET http://localhost:9000/eth/v1/keystores

