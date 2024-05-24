{
  imports = [
    ./dock
  ];

  system.defaults.dock = {
    autohide = false;
    launchanim = true;
    magnification = false; # don't magnify on hover
    orientation = "bottom";
    show-recents = true;
    tilesize = 42; # dock icon size
    static-only = false; # only show open apps
    show-process-indicators = true;
  };

  # local.dock options are defined in the ./dock module
  local.dock.enable = true;
  local.dock.entries = import ./dock-entries.nix { };
}
