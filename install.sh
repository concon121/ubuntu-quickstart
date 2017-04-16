#!/bin/bash

  echo "Installing atom.io plugins"
  packages=(`ls "packages" | grep "\.sh"`)
  for package in "${packages[@]}"
  do
    ./packages/${package}
  done

