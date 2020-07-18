#!/bin/bash

# java.sh
# Installs Java (OpenJDK) using asdf-vm

if ! [ -x "$(command -v asdf)" ]; then
  ./install/asdf.sh $1
fi

asdf plugin add java

# Install versions of Java
#asdf install java openjdk-14.0.1 # Have certain issues with JDK's above 8, and sadly ASDF doesn't have an OpenJDK of 8
asdf install java adoptopenjdk-8.0.181+13 # so instead using AdoptOpenJDK

# Set global version for default use
#asdf global java openjdk-14.0.1
asdf global java adoptopenjdk-8.0.181+13

