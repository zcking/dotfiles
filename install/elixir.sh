#!/bin/bash

# elixir.sh - Installs Elixir language using ASDF version manager;
#             Note: requires Erlang installed first!

if ! [ -x "$(command -v asdf)" ]; then
  ./install/asdf.sh $1
fi

asdf plugin add elixir
asdf install elixir 1.10.4-otp-23
asdf global elixir 1.10.4-otp-23

