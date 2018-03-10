#!/bin/bash

echo "========================================================================"
echo "Installing apt packages"
echo "========================================================================"

sudo apt-fast install -y git \
    rvm jq dconf-cli parallel golang-1.9-go \
    oracle-java8-installer vim \
    python python3 python-pip python3-dev python3-pip \
    nodejs build-essential yarn \
    fortune-mod cowsay \
    apt-transport-https azure-cli