#!/bin/bash

# zsh.sh
# Installs zsh, sets is as the default shell,
# and installs ohmyzsh framework.

# Install Zsh
if [ $1 = "linux" ]; then
  sudo apt install -y zsh curl git fonts-powerline
elif [ $1 = "mac" ]; then
  brew install zsh curl git fonts-powerline
else
  echo "$1 is not supported yet"
  exit 1
fi

# Set shell to Zsh
chsh -s $(which zsh)

# oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

# plugins and theme
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions $HOME/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
