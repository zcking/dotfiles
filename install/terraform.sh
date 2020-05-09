#!/usr/sh

# terraform.sh
# Installs Terraform using asdf-vm

if ! [ -x "$(command -v asdf)" ]; then
  ./install/asdf.sh
fi

asdf plugin add terraform

# Install versions
asdf install terraform 0.12.24

# Set global version for default use
asdf global terraform 0.12.24

terraform --version
