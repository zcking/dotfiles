#!/bin/sh

# Main entrypoint to setting up these dotfiles.
# should be executed from the same directory as this file

# Detect the OS
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=linux;;
    Darwin*)    machine=mac;;
    *)          machine=unsupported
esac

if [ $machine == "unsupported" ]; then
  echo "$unameOut is not currently supported"
  exit 1
else
  echo "$machine detected"
fi

for SCRIPT in `find install/ -type f`
do
  chmod +x "$SCRIPT"
done

# Install components...
install_wizard() {
  installer=$(echo $1 | rev | cut -d '/' -f 1 | rev | cut -d '.' -f 1)
  while true; do
    read -p "Do you wish to install $installer? (y/n): " yn
    case $yn in
      [Yy]*) echo "installing $installer ..."; /bin/sh $1; echo "$installer installation complete\n"; break;;
      [Nn]*) echo "skipping $installer"; break;;
      *) echo "please answer yes (y) or no (n)";;
    esac
  done
}

install_wizard ./install/fira-code.sh
install_wizard ./install/zsh.sh
install_wizard ./install/virtualbox.sh
install_wizard ./install/vagrant.sh
install_wizard ./install/docker.sh
install_wizard ./install/vim.sh

./bin/sync.sh
echo "the ASDF package manager is required to install the next components"
install_wizard ./install/asdf.sh

install_wizard ./install/python.sh
install_wizard ./install/aws-cli.sh
install_wizard ./install/terraform.sh

# Sync the symlinks to dotfiles
./bin/sync.sh
