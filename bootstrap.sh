curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up --accept-routes

sudo apt install git

curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | \
  sh -s -- install

nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix run home-manager/master -- init --switch
chezmoi init https://github.com/smartlurch/dotfiles.git
