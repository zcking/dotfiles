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
# for SCRIPT in `find install/ -type f | sort`
# do
#   if [ -f "$SCRIPT" ]
#   then
#     echo "Installilng $SCRIPT..."
#     sh "$SCRIPT"
#   fi
# done

./install/fira-code.sh
./install/zsh.sh
./install/virtualbox.sh
./install/vagrant.sh
./install/docker.sh

# Create symlinks for appropriate dotfiles
mk_symlinks system/
mk_symlinks zsh/
mk_symlinks git/