#!/bin/bash

# aws-cli.sh
# Installs the AWS command-line using pip

if [ $1 = "linux" ]; then
  sudo apt install -y libffi-dev
fi

if ! [ -x "$(command -v pip)" ]; then
  ./install/python.sh
fi

pip install --upgrade awscli
asdf reshim python
if [ -x "$(command -v aws)" ]; then
  aws configure # will prompt user for inputs
fi

