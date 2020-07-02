#!/bin/bash

# terraform.sh
# Installs Terraform using asdf-vm

if ! [ -x "$(command -v asdf)" ]; then
  ./install/asdf.sh
fi

asdf plugin add terraform

# Install versions
asdf install terraform 0.12.28

# Set global version for default use
asdf global terraform 0.12.28

terraform --version
