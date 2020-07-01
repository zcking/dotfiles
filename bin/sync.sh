#!/bin/sh

# sync.sh
# Resyncs the symlinks from dotfile locations to this repo.

mk_symlinks () {
  for DOTFILE in `find $1 -type f`
  do
    if [ -f "$DOTFILE" ]
    then
      ln -svf "$PWD/$DOTFILE" ~
    fi
  done
}

read -p "are you sure you'd like to sync? (y/n): " yn
while true; do
  case $yn in
    [Yy]* ) break;;
    [Nn]* ) exit;;
    * ) echo "Pleaser enter 'y' or 'n'";;
  esac
done

# Create symlinks for appropriate dotfiles
mk_symlinks system/
mk_symlinks zsh/
mk_symlinks git/

# Install Vundle plugins
vim +PluginInstall +qall
