nix-env --delete-generations old
nix-store --gc
nix-collect-garbage -d