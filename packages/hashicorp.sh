#!/bin/bash

echo "========================================================================"
echo "Installing Hashicorp Stack"
echo "========================================================================"


curr=`pwd`
cd /tmp

wget -O terraform.zip https://releases.hashicorp.com/terraform/0.11.3/terraform_0.11.3_linux_amd64.zip?_ga=2.168903337.920466468.1520644308-1510214332.1520644308
wget -O packer.zip https://releases.hashicorp.com/packer/1.2.1/packer_1.2.1_linux_amd64.zip?_ga=2.172458339.1788888362.1520644363-919014585.1520644363

unzip terraform.zip
unzip packer.zip

chmod +x terraform packer
sudo cp terraform /usr/bin/terraform
sudo cp packer /usr/bin/packer


wget -O vagrant.deb https://releases.hashicorp.com/vagrant/2.0.2/vagrant_2.0.2_x86_64.deb?_ga=2.105920583.579089531.1520644387-1581340565.1520644387

sudo dpkg -i vagrant.deb
sudo apt-get install -f

rm -f terraform* packer* vagrant*

cd $curr