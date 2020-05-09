#!/bin/sh

# aws-cli.sh
# Installs the AWS command-line using pip

if ! [ -x "$(command -v pip)" ]; then
  ./install/python.sh
fi

pip install --upgrade awscli
aws configure # will prompt user for inputs
