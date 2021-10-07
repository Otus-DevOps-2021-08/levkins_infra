#!/bin/bash -e
apt update && sleep 30
apt-get install --yes ruby-full ruby-bundler build-essential git
echo "---CHECK---"
ruby -v && bundler -v
