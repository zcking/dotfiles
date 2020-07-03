#!/bin/bash

# asdf.sh
# Installs the ASDF version manager for
# installing other languages/tools.

ASDF_VERSION=0.7.8

if ! [ -x "$(command -v git)" ]
then
  echo 'Installing git...'
  if [ $1 = "linux" ]; then
    sudo apt install -y -q git
  elif [ $1 = "mac" ]; then
    brew install git
  else
    echo "$1 not supported yet"
    exit 1
  fi
fi

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch "v$ASDF_VERSION"

source $HOME/.bash_profile # necessary to find asdf in the following programs

