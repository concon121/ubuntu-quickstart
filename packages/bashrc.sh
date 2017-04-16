#!/bin/bash

echo "*** Setting up .bashrc ***"

IFS=$'\n'
aliases=(`cat \`dirname $0\`/config/bashrc.conf`)

for a in "${aliases[@]}"
do
  exists=`grep -F "$a" $HOME/.bashrc`
  if [ -z "$exists" ]
  then
    echo "Adding line: $a"
    echo "$a" >> $HOME/.bashrc
  fi
done

