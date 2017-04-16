#!/bin/bash

echo "*** Installing shell tools ***"

sudo apt-get -y install jq dconf-cli parallel

wget https://github.com/ok-borg/borg/releases/download/v0.0.3/borg_linux_amd64 -O /usr/local/bin/borg
chmod 755 /usr/local/bin/borg

