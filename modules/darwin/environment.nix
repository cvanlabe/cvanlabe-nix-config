{ pkgs, ... }: {
  environment = {
    shells = [ pkgs.zsh ];
    loginShell = pkgs.zsh;
    # darwin only system packages, go to /run/current-system/sw
    systemPackages = with pkgs; [
      dockutil
    ];

    # this goes to the top of the list, before nixos profiles, but after shell/develop paths
    #systemPath = [ "/usr/local/Homebrew/bin" ];
    systemPath = [ "/opt/homebrew/bin" ];
    pathsToLink = [ "/Applications" ];
  };
}
