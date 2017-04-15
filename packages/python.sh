#!/bin/bash

echo "========================================================================"
echo "Installing Python"
echo "========================================================================"

sudo apt-get -y install python python3 python-pip python3-dev python3-pip
sudo -H pip3 install thefuck
