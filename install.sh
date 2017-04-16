#!/bin/bash

echo "========================================================================"
echo "Installing Ubuntu Artifacts"
echo "========================================================================"

sudo apt-get -y update

packages=(`ls "packages" | grep "\.sh"`)
for package in "${packages[@]}"
do
  ./packages/${package}
done

echo "*** Tidying Up! ***"

sudo apt autoremove

