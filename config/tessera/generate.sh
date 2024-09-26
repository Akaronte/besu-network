#!/bin/sh


cat ./data/tessera-config-template.json

echo $TESSERA_MODE
echo $TESSERA_HOSTNAME

cat <<EOF | tee ./data/tessera-config-template.json
{
  "mode": "${TESSERA_MODE}",
  "useWhiteList": false,
  "jdbc": {
      "username": "sa",
      "password": "",
      "url": "jdbc:h2:./data/tm/db;MODE=Oracle;TRACE_LEVEL_SYSTEM_OUT=0",
      "autoCreateTables": true
  },
  "serverConfigs": [
      {
          "app": "ThirdParty",
          "enabled": true,
          "serverAddress": "http://${TESSERA_HOSTNAME}:9080",
          "communicationType": "REST"
      },
      {
          "app": "Q2T",
          "enabled": true,
          "serverAddress": "http://${TESSERA_HOSTNAME}:9101",
          "sslConfig": {
              "tls": "OFF"
          },
          "communicationType": "REST"
      },
      {
          "app": "P2P",
          "enabled": true,
          "serverAddress": "http://${TESSERA_HOSTNAME}:9000",
          "sslConfig": {
              "tls": "OFF"
          },
          "communicationType": "REST"
      }
  ],
  "peer": [
      {
          "url": "http://member1tessera:9000"
      },
      {
          "url": "http://member2tessera:9000"
      },
      {
          "url": "http://member3tessera:9000"
      }
  ],
  "keys": {
      "passwords": [],
      "keyData": [
          {
              "privateKeyPath": "/config/keys/tm.key",
              "publicKeyPath": "/config/keys/tm.pub"
          }
      ]
  },
  "alwaysSendTo": [],
  "bootstrapNode": false,
  "features": {
      "enableRemoteKeyValidation": false,
      "enablePrivacyEnhancements": true
  }
}
EOF

cat ./data/tessera-config-template.json


CONFIG=$(cat ./data/tessera-config-template.json | sed \
  -e "s/\${TESSERA_MODE}/${TESSERA_MODE}/g" \
  -e "s/\${TESSERA_HOSTNAME}/${TESSERA_HOSTNAME}/g")

echo $CONFIG > ./tessera-config.json

cat ./tessera-config.json