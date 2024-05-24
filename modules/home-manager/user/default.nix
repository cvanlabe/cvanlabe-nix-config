{
  pkgs,
  stateVersion,
  home,
  ...
}: {
  imports = [
    ./dotfiles # copy dotfiles into home
    ./packages.nix
    ./programs # install and configure applications using home-manager
  ];

  home = {
    inherit stateVersion;

    # packages = import ./packages.nix { inherit pkgs; };

    # do not use sessionVariables for PATH modifications
    sessionVariables = {
      HOMEBREW_NO_ANALYTICS = 1; # disable homebrew analytics
      PAGER = "less"; # use less instead of more
      COLOR = 1; # force cli color
      CLICOLOR = 1; # force cli color
      EDITOR = "nvim";
    };

    # sessionPath goes to the very end of the list
    sessionPath = [
      #"$HOME/.cargo/bin"
      "$HOME/.local/bin"
    ];

    shellAliases = {
      sudo = "sudo "; # allow aliases to be run with sudo
      cls = "clear"; # shorthand and alias to win's cls
      path-lines = "echo $PATH | tr ':' '\n'";
    };
  };

  manual.html.enable = true;

  #pam.yubico.authorizedYubiKeys.ids = ["fetchcjejtbu"];
}
