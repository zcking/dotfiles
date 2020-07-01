#!/bin/bash

# vim.sh
# Installs and provisions Vim

# Install the vim command line editor
sudo apt install -y vim

# Install curl and git if not installed already
# required for installing Vundle plugin manager
if ! [ -x "$(command -v git)" ]; then
  sudo apt install -y git
fi
if ! [ -x "$(command -v curl)" ]; then
  sudo apt install -y curl
fi

# Install Vundle plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Link the .vimrc file
ln -svf "$(pwd)/system/.vimrc" ~

# Install onedark theme
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/autoload
curl -o ~/.vim/colors/onedark.vim https://raw.githubusercontent.com/joshdick/onedark.vim/master/autoload/onedark.vim
curl -o ~/.vim/autoload/onedark.vim https://raw.githubusercontent.com/joshdick/onedark.vim/master/colors/onedark.vim

