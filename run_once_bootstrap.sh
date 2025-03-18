#!/bin/bash
# install requirements and assumes chemoi alreadyinstalled
sudo apt install git curl -y
#curl -fsSL https://tailscale.com/install.sh | sh
# install nix packages
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install --determinate 
# activate nix packages in current shell
. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
# install home manager and apply config
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix run home-manager/master -- init --switch
