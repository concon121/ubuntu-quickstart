#!/bin/bash

echo "========================================================================"
echo "Setting up Aliases"
echo "========================================================================"

echo "alias ll='ls -lrt'" >> $HOME/.bashrc
echo "alias at='atom --disable-gpu &'" >> $HOME/.bashrc
echo "alias ws='cd $HOME/workspace'" >> $HOME/.bashrc
echo "alias tools='cd $HOME/tools'" >> $HOME/.bashrc
echo "alias sf='cd /media/sf_VBoxShared'" >> $HOME/.bashrc
echo "alias ff='firefox &'" >> $HOME/.bashrc
echo "alias changelog='github_changelog_generator -u concon121 -t <token_goes_here> -p'" >> $HOME/.bashrc
echo 'eval $(thefuck --alias)' >> $HOME/.bashrc

