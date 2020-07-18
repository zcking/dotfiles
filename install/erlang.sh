#!/bin/bash

# erlang.sh - Install Erlang language and VM (BEAM) using
#             ASDF version manager.

if ! [ -x "$(command -v asdf)" ]; then
  ./install/asdf.sh $1
fi

asdf plugin add erlang
asdf install erlang 23.0.2
asdf global erlang 23.0.2

