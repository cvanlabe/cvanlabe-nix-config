{
  programs.git = {
    enable = true;
    ignores = [
      "*.pyc"
      "*.swp"
      "*~"
      ".DS_Store"
      ".direnv"
    ];
    lfs = {
      enable = true;
    };
    # TODO: take this from top-level variable
    userName = "Cedric Van Labeke";
    userEmail = "cedric.vanlabeke@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      core = {
        autocrlf = "input";
      };
      commit.gpgsign = false;
      pull.rebase = true;
      rebase.autoStash = true;
      push.autoSetupRemote = true;

      # url rewrites to ssh
      url."ssh://git@github.com".pushInsteadOf = "https://github.com";
      url."ssh://git@gitlab.com".pushInsteadOf = "https://gitlab.com";

      # url aliases
      url."https://github.com/".insteadOf = "gh";
      url."https://gitlab.com/".insteadOf = "gl";
    };
  };
}
