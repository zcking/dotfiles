#!/bin/bash

# aws-cli.sh
# Installs the AWS command-line using pip

if ! [ -x "$(command -v pip)" ]; then
  ./install/python.sh
fi

pip install --upgrade awscli
if [ -x "$(command -v aws)" ]; then
  aws configure # will prompt user for inputs
fi

