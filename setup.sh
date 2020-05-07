#!/bin/sh

# Main entrypoint to setting up these dotfiles.
# should be executed from the same directory as this file

CWD=`pwd`

mk_symlinks () {
  for DOTFILE in `find $1 -type f`
  do
    if [ -f "$DOTFILE" ]
    then
      ln -svf "$PWD/$DOTFILE" ~
    fi
  done
}

for SCRIPT in `find install/ -type f`
do
  chmod +x "$SCRIPT"
done

# Install components...
./install/zsh.sh

# Create symlinks for appropriate dotfiles
mk_symlinks system/
mk_symlinks zsh/
mk_symlinks git/