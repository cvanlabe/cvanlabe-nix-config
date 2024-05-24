{config, ...}: {
  home.file = {
    ".config" = {
      source = ./config;
      recursive = true;
    };

    ".ssh" = {
      source = ./ssh;
      recursive = true;
    };
  };
}
# TODO: add configs with secrets
# spotify-tui
# spotifyd

