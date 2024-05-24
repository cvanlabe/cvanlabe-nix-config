{
  homebrew = {
    enable = true;
    caskArgs.no_quarantine = true;
    global = {
      autoUpdate = false;
      brewfile = true;
    };
    onActivation = {
      autoUpdate = false;
      cleanup = "zap";
      upgrade = true;
    };
    brews = import ./brews.nix { };
    casks = import ./casks.nix { };
    taps = import ./taps.nix { };
    masApps = import ./mas.nix { };
  };
}
