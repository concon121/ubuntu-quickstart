#!/bin/bash

echo "*** Installing Atom ***"

currentDir=`pwd`
mkdir -p "${HOME}/tools"
cd "${HOME}/tools"

set -x

git clone git@github.com:concon121/atom-quickstart.git
cd atom-quickstart
make ORIGIN=git@github.com:concon121/atom-quickstart.git USER=connor

aq=`cat $HOME/.bashrc | grep "atom-quickstart"`
if [ -z "$aq" ]
then
  echo "sudo atom-quickstart &" >> $HOME/.bashrc
fi

cd "${currentDir}"
