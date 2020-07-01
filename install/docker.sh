#!/bin/bash

# docker.sh
# Installs and sets up the Docker engine and permissions.


# Install the docker engine
sudo apt install -y docker

# Create docker group and add the user
sudo groupadd docker
sudo usermod -aG docker $USER

# Reinitialize groups - works like logging out
# and back in for this
newgrp docker

# Make sure .docker directory has the right permissions
if [ -d "$HOME/.docker" ]
then
  sudo chown -R "$USER:$USER" "$HOME/.docker"
  sudo chmod -R g+rwx "$HOME/.docker"
fi

# Disable docker from starting on boot
# (use the following line instead if you want it enabled on boot)
# sudo systemctl enable docker
sudo systemctl disable docker

