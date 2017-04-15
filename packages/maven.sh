#!/bin/bash

echo "========================================================================"
echo "Installing Apache Maven"
echo "========================================================================"

sudo apt-get update
sudo apt-cache search maven
sudo apt-get install maven
