#!/bin/bash

echo "========================================================================"
echo "Adding PPA's"
echo "========================================================================"

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

sudo add-apt-repository -y ppa:gophers/archive
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-add-repository -y ppa:rael-gc/rvm

curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update