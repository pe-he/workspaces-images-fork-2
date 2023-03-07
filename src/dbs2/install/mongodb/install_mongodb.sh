#!/usr/bin/env bash
set -ex

apt update
apt install gnupg

wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list
apt update
apt install -y mongodb-org

# Start Service

# Step 5 Configure MongoDB

# Compass
wget https://downloads.mongodb.com/compass/mongodb-compass_1.33.1_amd64.deb
apt install -y libsecret-1-0 libgconf-2-4 libnss3
apt install -y ./mongodb-compass_*_amd64.deb

rm mongodb-compass_1.33.1_amd64.deb

# Desktop Icon
cp $INST_SCRIPTS/mongodb/mongodb-compass.desktop /usr/share/applications/
cp /usr/share/applications/mongodb-compass.desktop $HOME/Desktop/
chmod +x $HOME/Desktop/mongodb-compass.desktop
