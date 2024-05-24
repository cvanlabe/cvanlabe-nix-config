#!/bin/sh
# this script bootstraps nix-darwin
# but could be refactored to also bootstrap other systems like linux and nix os

echo "Installing nix..."
eval "$(curl -L https://nixos.org/nix/install)"

echo "Installing Homebrew for MacOS apps..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Enabling flakes..."
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >>~/.config/nix/nix.conf

echo "Configuring nix-darwin..."
nix run nix-darwin -- switch --flake .#
