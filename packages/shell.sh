#!/bin/bash

echo "========================================================================"
echo "Installing shell tools"
echo "========================================================================"

sudo apt-get -y install jq dconf-cli

wget https://github.com/ok-borg/borg/releases/download/v0.0.3/borg_linux_amd64 -O /usr/local/bin/borg
chmod 755 /usr/local/bin/borg

git clone https://github.com/momeni/gittify.git
cd gittify
sudo make install-root
