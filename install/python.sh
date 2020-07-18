#!/bin/bash

# python.sh
# Installs Python installations using asdf-vm

if ! [ -x "$(command -v asdf)" ]; then
  ./install/asdf.sh $1
fi

asdf plugin add python

if [ $1 = "linux" ]; then
  sudo apt install -y zlib1g-dev libssl-dev gcc make libsqlite3-dev libreadline-dev libbz2-dev
fi

# Install versions of Python
asdf install python 2.7.18
asdf install python 3.8.2

# Set global version for default use
asdf global python 3.8.2

# Install pip for system
curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
python /tmp/get-pip.py

# Upgrade global installation of pip to latest
python -m pip install --upgrade pip
