#!/bin/bash

# vagrant.sh
# Installs HashiCorp Vagrant tool
# must be installed after Virtualbox

PACKAGE="vagrant_2.2.9_x86_64.deb"

sudo apt install -y wget

rm -f "/tmp/$PACKAGE"
wget "https://releases.hashicorp.com/vagrant/2.2.9/${PACKAGE}"
mv "$PACKAGE" /tmp/
sudo dpkg -i "/tmp/$PACKAGE"
