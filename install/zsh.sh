#!/bin/bash

# zsh.sh
# Installs zsh, sets is as the default shell,
# and installs ohmyzsh framework.

# Install Zsh
if [ $1 = "linux" ]; then
  sudo apt install -y zsh curl git fonts-powerline
elif [ $1 = "mac" ]; then
  # Newer macs come with Zsh as the default shell
  if [ $SHELL != "/bin/zsh" ]; then
    brew install zsh curl git
  fi

  # Install powerline fonts. This can't be installed with brew
  rm -rf /tmp/powerline-fonts
  git clone https://github.com/powerline/fonts /tmp/powerline-fonts
  /bin/bash /tmp/powerline-fonts/install.sh
else
  echo "$1 is not supported yet"
  exit 1
fi

if [ $SHELL != "/bin/zsh" ]; then
  # Set shell to Zsh
  chsh -s $(which zsh)
else
  echo -e '\n\n****\nzsh is already the selected shell.\n****\n\n'
fi

# oh-my-zsh
rm -rf $HOME/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

# plugins and theme
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions $HOME/.oh-my-zsh/custom/plugins/zsh-completions
