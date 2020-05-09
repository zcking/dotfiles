#!/bin/sh

# Main entrypoint to setting up these dotfiles.
# should be executed from the same directory as this file

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

# TODO: setup a prompt for each of these to ask if I want to install them
./install/fira-code.sh
./install/zsh.sh
./install/virtualbox.sh
./install/vagrant.sh
./install/docker.sh
./install/asdf.sh
./install/python.sh

# Sync the symlinks to dotfiles
./bin/sync.sh
