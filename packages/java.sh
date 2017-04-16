#!/bin/bash

echo "*** Installing Oracle JDK 8 ***"

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get -y update

sudo apt-get -y install oracle-java8-installer
