{ host
, user
, ...
}: {
  imports = [
    ../hosts/${host}/system.nix
    # ./apps.nix # link nix apps to fix spotlight
    ./dock.nix # configure dock
    ./environment.nix # configure environment (e.g default shell)
    ./finder.nix # configure finder
    ./fonts.nix # install fonts (e.g. NerdFonts)
    ./homebrew # install homebrew apps and configure homebrew itsef
    ./keyboard.nix # settings for key repeat etc
    ./music_app.nix # set default music app instead of Apple music
    ./networking.nix # configure networking (e.g. hostname, dns, etc)
    ./nix.nix # configure nix itself (use flakes, etc)
    ./screen.nix # configure display of fonts etc
    ./system.nix # configure system settings
    ./trackpad.nix # configure trackpad (e.g. force feedback)
  ];

  # TODO: put this in a module once I find how to pass the user var
  # may not have any effect on a corporate managed mac
  users.users.${user}.openssh.authorizedKeys.keys = import ../../files/authorized_keys.nix;


}
