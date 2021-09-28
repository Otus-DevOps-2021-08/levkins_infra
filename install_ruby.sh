#!/bin/bash
apt update
apt install -y ruby-full ruby-bundler build-essential git
echo "---CHECK---"
ruby -v && bundler -v
