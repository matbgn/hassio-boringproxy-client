#!/usr/bin/with-contenv bashio

SERVER_URL=$(bashio::config 'server_url')
TOKEN=$(bashio::config 'token')
USER=$(bashio::config 'user')
CLIENT_NAME=$(bashio::config 'client_name')
ACME_EMAIL=$(bashio::config 'acme_email')

wget https://github.com/boringproxy/boringproxy/releases/download/v0.9.1/boringproxy-linux-arm
mv boringproxy* boringproxy
chmod +x boringproxy
./boringproxy client -server ${SERVER_URL} -token ${TOKEN} -user ${USER} -client-name ${CLIENT_NAME} -acme-email ${ACME_EMAIL}