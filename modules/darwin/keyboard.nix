{
  system = {
    keyboard = {
      enableKeyMapping = true;
      nonUS.remapTilde = false;
      # using karabiner instead
      #remapCapsLockToControl = true;
    };
    defaults.NSGlobalDomain = {
      InitialKeyRepeat = 14;
      KeyRepeat = 1;
      "com.apple.keyboard.fnState" = false;
    };
  };
}
