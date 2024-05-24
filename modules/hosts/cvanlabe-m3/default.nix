{inputs}:
with inputs; let
  user = "cvanlabe";
  host = "cvanlabe-m3";
in [
  # system
  (import ../../darwin {inherit inputs host user;})

  # home
  home-manager.darwinModule
  (import ../../home-manager {inherit inputs host user;})
]
