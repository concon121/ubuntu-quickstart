#!/bin/bash

  echo "Installing atom.io plugins"
  packages=(`ls "packages"`)
  for package in "${packages[@]}"
  do
    ./packages/${package}
  done

