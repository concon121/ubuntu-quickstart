#!/bin/bash

echo "========================================================================"
echo "Installing .bashrc"
echo "========================================================================"


IFS=$'\n'

cp `dirname $0`/config/bashrc.conf $HOME/.custom.bashrc

loadCustom=". ~/.custom.bashrc"

if [[ `grep "${loadCustom}" ~/.bashrc | wc -l` -eq 0 ]]
then
  echo ${loadCustom} >> ~/.bashrc
fi
