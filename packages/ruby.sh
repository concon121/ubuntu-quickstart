#!/bin/bash

echo "========================================================================"
echo "Installing Ruby"
echo "========================================================================"


if [[ ! -z `which rvm` ]]
then
    rvm install ruby
    gem install bundler rake rubocop github_changelog_generator boom lono lolcat
else
    echo "No rmv installed!"
fi