#!/bin/sh

# asdf.sh
# Installs the ASDF version manager for 
# installing other languages/tools.

ASDF_VERSION=0.7.8

if ! [ -x "$(command -v git)" ]
then
  echo 'Installing git...'
  apt install -y -q git
fi

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch "v$ASDF_VERSION"

