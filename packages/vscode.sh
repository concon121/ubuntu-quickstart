#!/bin/bash

echo "========================================================================"
echo "Installing Visual Studio Code"
echo "========================================================================"

curr=`pwd`

cd /tmp

wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868

sudo dpkg -i vscode.deb
sudo apt-get install -f

rm -f vscode.deb

cd $curr