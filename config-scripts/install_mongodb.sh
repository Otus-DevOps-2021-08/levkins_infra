#!/bin/bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
apt update && apt install -y mongodb-org mongodb-org-server
mongo --version || exit
systemctl enable mongod.service
systemctl start mongod.service
systemctl status mongod.service
