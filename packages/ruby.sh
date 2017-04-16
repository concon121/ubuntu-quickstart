#!/bin/bash

echo "*** Installing Ruby ***"

sudo apt-get -y install ruby-full
sudo gem install bundler rake rubocop github_changelog_generator boom
