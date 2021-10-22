#!/bin/bash
set -e

mkdir -p certs
openssl req -newkey rsa:4096 \
            -x509 \
            -sha256 \
            -days 3650 \
            -nodes \
            -out certs/devserver.crt \
            -keyout certs/devserver.key \
            -subj "/C=SI/ST=localhost/L=localhost/O=Security/OU=localhost/CN=localhost"

docker-compose up --build