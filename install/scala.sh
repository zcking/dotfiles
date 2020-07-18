#!/bin/bash

# scala.sh - Installs Scala language using ASDF version manager

if ! [ -x "$(command -v asdf)" ]; then
  ./install/asdf.sh $1
fi

asdf plugin add scala
asdf install scala 2.11.8
asdf install scala 2.12.3

asdf global scala 2.11.8

asdf plugin add sbt
asdf install sbt 1.3.9
asdf global sbt 1.3.9

