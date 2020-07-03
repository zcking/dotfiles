#!/bin/bash

# vscode.sh
# Installs the Visual Studio Code IDE

if [ $1 = "mac" ]; then
  wget https://update.code.visualstudio.com/latest/darwin/stable
  mv stable /tmp/vscode.zip
  unzip /tmp/vscode.zip
  sudo mv 'Visual Studio Code.app' /Applications/
  rm -f /tmp/vscode.zip
else
  sudo apt install -y software-properties-common apt-transport-https wget
  wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
  sudo apt update -y
  sudo apt install code
fi
