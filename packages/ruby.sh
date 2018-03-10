#!/bin/bash

echo "*** Installing Ruby ***"

if [[ ! -z `which rvm` ]]
then
    rvm install ruby
    gem install bundler rake rubocop github_changelog_generator boom lono
else
    echo "No rmv installed!"
fi