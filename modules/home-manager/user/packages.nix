{
  inputs,
  pkgs,
  system,
  ...
}: {
  home.packages = with pkgs;
    [
      # common packages, found in ~/.nix-profile/bin
      age
      alejandra
      coreutils-full
      curl
      du-dust
      glow # CLI markdown viewer
      home-manager
      htop
      inetutils
      killall
      less
      mitmproxy
      neofetch
      nixpkgs-fmt
      openssh
      progress
      ripgrep
      sops
      ssh-to-age
      trippy # cmd 'trip'
      unzip
      inputs.unstable.legacyPackages.${system}.vscode-langservers-extracted
      wakeonlan
      wget
      yt-dlp
      zellij
      zip
      jetbrains.pycharm-community
    ]
    ++ lib.optionals pkgs.stdenv.isLinux [
      ethtool
    ];
}
