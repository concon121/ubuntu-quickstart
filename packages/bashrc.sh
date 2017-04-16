#!/bin/bash

echo "========================================================================"
echo "Setting up .bashrc"
echo "========================================================================"

IFS=$'\n'
aliases=(`cat \`dirname $0\`/config/bashrc.conf`)

for a in "${aliases[@]}"
do
  exists=`grep -F "$a" $HOME/.bashrc`
  if [ -z "$exists" ]
  then
    echo "Adding line: $a"
    echo "$a" >> $HOME/.bashrc
  else
    echo "Line is already present: $a"
  fi
done

