{
  description = "Declarative MacOS nix-conf, forked from sgrimee/nix-unified-main";
  inputs = {
    # nixpkgs
    unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    stable-nixos.url = "github:nixos/nixpkgs/nixos-23.11";
    stable-darwin.url = "github:NixOS/nixpkgs/nixpkgs-23.11-darwin";

    mkAlias = {
      url = "github:reckenrode/mkAlias";
      inputs.nixpkgs.follows = "stable-nixos";
    };

    nixos-hardware.url = "github:NixOS/nixos-hardware";

    nix-darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "stable-darwin";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "stable-nixos";
    };


  };

  outputs =
    { home-manager
    , nixos-hardware
    , self
    , ...
    } @ inputs:
    let
      stateVersion = "23.05";
      mkModules = host: (import ./modules/hosts/${host} { inherit inputs; });
    in
    {

      darwinConfigurations = {
        cvanlabe-m3 = inputs.nix-darwin.lib.darwinSystem rec {
          system = "aarch64-darwin";
          specialArgs = {
            inherit inputs system stateVersion;
            overlays = import ./overlays;
          };
          modules = mkModules "cvanlabe-m3";
        };
      };
    };
}
