#!/usr/bin/with-contenv bashio

wget https://files.apitman.com/public/boringproxy/raw-tls/boringproxy-linux-arm
mv boringproxy* boringproxy
chmod +x boringproxy
boringproxy client