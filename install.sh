#!/bin/bash

echo "========================================================================"
echo "Installing Ubuntu Artifacts"
echo "========================================================================"

sudo apt-get -y update

if [[ -f ~/.gnupg/gpg.conf ]]
then
  sed -i "s|#keyserver-options auto-key-retrieve|keyserver-options auto-key-retrieve|g" ~/.gnupg/gpg.conf
fi

/bin/bash -c "$(curl -sL https://git.io/vokNn)"

packages=(`ls "packages" | grep "\.sh"`)
for package in "${packages[@]}"
do
  ./packages/${package}
done

echo "*** Tidying Up! ***"

sudo apt-get -y upgrade
sudo apt-get -y autoremove

