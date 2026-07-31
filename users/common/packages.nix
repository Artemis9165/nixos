{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kitty
    imagemagick
    grim
    slurp
    wl-clipboard
  ];
}
