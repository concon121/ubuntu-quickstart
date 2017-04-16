#!/bin/bash

echo "========================================================================"
echo "Installing Git"
echo "========================================================================"

sudo apt-get update
sudo apt-get install git

currentDir=`pwd`

echo "** Installing git-semver **"

mkdir -p $HOME/tools
cd $HOME/tools

git clone https://github.com/markchalloner/git-semver.git
cd git-semver
git pull origin master
sudo bash ./install.sh

vp=`cat $HOME/.bashrc | grep VERSION_PREFIX`
if [ -z "$vp" ]
then
  echo 'export VERSION_PREFIX="v"' >> $HOME/.bashrc
fi


cd $currentDir
