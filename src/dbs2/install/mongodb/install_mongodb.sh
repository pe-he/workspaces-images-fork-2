#!/usr/bin/env bash
set -ex

apt update
apt install gnupg

wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list
apt update
apt install -y mongodb-org


