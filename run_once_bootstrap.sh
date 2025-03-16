#!/bin/bash

sudo apt install git curl
curl -fsSL https://tailscale.com/install.sh | sh

curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | \
  sh -s -- install

nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix run home-manager/master -- init --switch
