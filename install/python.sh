#!/usr/sh

# python.sh
# Installs Python installations using asdf-vm

if ! [ -x "$(command -v asdf)" ]; then
  ./install/asdf.sh
fi

asdf plugin add python

# Install versions of Python
asdf install python 2.7.18
asdf install python 3.8.2

# Set global version for default use
asdf global python 3.8.2

# Upgrade global installation of pip to latest
if [ -x "$(command -v pip)" ]; then
  pip install --upgrade pip
fi
