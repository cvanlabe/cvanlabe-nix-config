{ pkgs, ... }: {
  fonts = {
    fontDir.enable = true; # DANGER
    fonts = [
      pkgs.meslo-lgs-nf
      (pkgs.nerdfonts.override {
        fonts = [
          "FiraCode"
          "FiraMono"
        ];
      })
    ];
  };
}
