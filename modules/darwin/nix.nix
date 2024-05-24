{ inputs
, lib
, pkgs
, ...
}: {
  nix = {
    configureBuildUsers = true;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
    gc = {
      user = "root";
      automatic = true;
      interval = {
        Weekday = 0;
        Hour = 2;
        Minute = 0;
      };
      options = "--delete-older-than 30d";
    };

    # pin nixpkgs system wide
    registry.nixpkgs.flake = inputs.stable-darwin;
    registry.unstable.flake = inputs.unstable;

    settings = {
      # automatically hotlink duplicate files
      auto-optimise-store = true;

      sandbox = true;

      # use faster cache
      substituters = [ "https://aseipp-nix-cache.global.ssl.fastly.net" ];
      # implied by substituters, but keeping in case we remove substituters
      trusted-substituters = [ "https://aseipp-nix-cache.global.ssl.fastly.net" ];
    };
  };

  # Ignored when nixpkgs.pkgs is set, but should not be the case here.
  nixpkgs.config.allowUnfree = true;

  # add custom overlays
  nixpkgs.overlays = import ../../overlays;

  # activate nix daemon
  services.nix-daemon.enable = true;
}
