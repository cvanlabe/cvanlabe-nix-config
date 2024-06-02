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

    ".gitconfig" = {
      source = ./gitconfig;
      recursive = false;
    };

    ".gitconfig-elisity" = {
      source = ./gitconfig-elisity;
      recursive = false;
    };
  };
}
# TODO: add configs with secrets
# spotify-tui
# spotifyd

