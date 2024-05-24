{
  system.defaults = {
    trackpad = {
      ActuationStrength = 0; # force feedback
      Clicking = true;
      FirstClickThreshold = 1; # force feedback
      SecondClickThreshold = 1; # force feedback
      TrackpadRightClick = true;
      TrackpadThreeFingerDrag = true;
    };
    NSGlobalDomain = {
      "com.apple.trackpad.scaling" = 2.0; # tracking speed
      "com.apple.mouse.tapBehavior" = 1; # tap to click
      "com.apple.swipescrolldirection" = false; # disable "natural" (sigh..) scroll
    };
  };
}
