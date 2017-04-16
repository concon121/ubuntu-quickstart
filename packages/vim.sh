#!/bin/bash

echo "========================================================================"
echo "Installing Vim"
echo "========================================================================"

sudo apt-get install vim

colors=`find /usr/share/vim | grep "colors$"`

wget https://raw.githubusercontent.com/atweiden/vim-colors-behelit/master/colors/behelit.vim -O "${colors}/behelit.vim"

cat `dirname $0`/config/vimrc.conf > "${HOME}/.vimrc"


