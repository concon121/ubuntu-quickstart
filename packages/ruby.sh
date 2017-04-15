#!/bin/bash

echo "========================================================================"
echo "Installing Ruby"
echo "========================================================================"

sudo apt-get install ruby-full
sudo gem install bundler rake rubocop github_changelog_generator boom
