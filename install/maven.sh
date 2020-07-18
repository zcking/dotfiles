#!/bin/bash

# maven.sh - Install Maven build manager for JVM-languages

if ! [ -x "$(command -v asdf)" ]; then
  ./install/asdf.sh $1
fi

asdf plugin add maven
asdf install maven 3.6.3
asdf global maven 3.6.3

