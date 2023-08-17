let
  pkgs1 = import <nixpkgs> {
    config = {};
    overlays = [
    ];
  };
  overlay = (import ./overlay.nix);
  pkgs = import <nixpkgs> {
    config = {};
    overlays = [
      overlay
    ];
  };
in {
  papermc-1_19_4 = pkgs.papermc-1_19_4;
}

