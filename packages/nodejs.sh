#!/bin/bash

echo "========================================================================"
echo "Installing Node JS"
echo "========================================================================"

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

sudo npm install -g tldr