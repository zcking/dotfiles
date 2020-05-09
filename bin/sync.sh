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

# Create symlinks for appropriate dotfiles
mk_symlinks system/
mk_symlinks zsh/
mk_symlinks git/
