{
  system.defaults = {
    finder = {
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;
      FXEnableExtensionChangeWarning = false;
      _FXShowPosixPathInTitle = true; # show full path in finder title
      FXPreferredViewStyle = "clmv"; # default to column view
    };
    NSGlobalDomain = {
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;
    };
    menuExtraClock = {
      Show24Hour = true;
    };
    screencapture = {
      location = "~/Pictures/Screenshots";
    };
  };
}
