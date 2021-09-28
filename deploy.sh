#!/bin/bash
cd ~ && git clone -b monolith https://github.com/express42/reddit.git
cd ./reddit
[ "0" == 0 ] || exit 0
bundle install
puma -d
ps ax | grep ruby && ss -tlp
