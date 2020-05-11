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
./install/vim.sh

./bin/sync.sh
./install/asdf.sh
source $HOME/.bash_profile # necessary to find asdf in the following programs

./install/python.sh
./install/aws-cli.sh
./install/terraform.sh

# Sync the symlinks to dotfiles
./bin/sync.sh
