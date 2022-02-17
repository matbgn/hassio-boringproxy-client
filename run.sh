#!/usr/bin/with-contenv bashio

SERVER_URL=$(bashio::config 'server_url')
TOKEN=$(bashio::config 'token')
CLIENT_NAME=$(bashio::config 'client_name')

wget https://files.apitman.com/public/boringproxy/raw-tls/boringproxy-linux-arm
mv boringproxy* boringproxy
chmod +x boringproxy
./boringproxy client -server ${SERVER_URL} -token ${TOKEN} -client-name ${CLIENT_NAME}