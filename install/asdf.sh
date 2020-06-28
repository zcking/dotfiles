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

rm -rf ~/.asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch "v$ASDF_VERSION"

source $HOME/.bash_profile # necessary to find asdf in the following programs

