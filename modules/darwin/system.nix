{
  # Add ability to used TouchID for sudo authentication
  security.pam.enableSudoTouchIdAuth = true;

  system = {
    activationScripts.postUserActivation.text = ''
      # Following line should allow us to avoid a logout/login cycle
      /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
    '';
    defaults = {
      LaunchServices = {
        LSQuarantine = false;
      };
      loginwindow = {
        DisableConsoleAccess = true;
        GuestEnabled = false;
        SHOWFULLNAME = false;
      };
      menuExtraClock = {
        Show24Hour = true;
        ShowDate = 0;
        ShowDayOfMonth = true;
      };
      NSGlobalDomain = {
        AppleInterfaceStyleSwitchesAutomatically = true; # auto dark / light mode
        AppleShowAllExtensions = true;
        ApplePressAndHoldEnabled = false;
        "com.apple.mouse.tapBehavior" = 1;
        "com.apple.sound.beep.volume" = 0.0;
        "com.apple.sound.beep.feedback" = 0; # disable sound when changing volume
      };
    };
  };
}
