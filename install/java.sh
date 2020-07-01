#!/bin/bash

# java.sh
# Installs Java (OpenJDK) using asdf-vm

if ! [ -x "$(command -v asdf)" ]; then
  ./install/asdf.sh $1
fi

asdf plugin add java

# Install versions of Java
asdf install java openjdk-14.0.1

# Set global version for default use
asdf global java openjdk-14.0.1

