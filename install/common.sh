#!/bin/bash

# common.sh
# Installs common utilities
#   $1 - Machine (e.g. mac/linux)

if [ $1 = "linux" ]; then
  sudo apt install -y wget curl unzip
elif [ $1 = "mac" ]; then
  brew install wget curl
fi
