#!/bin/bash

if [ $1 = "linux" ]; then
  sudo apt install -y virtualbox
else
  echo "$1 is not supported yet"
  exit 1
fi

