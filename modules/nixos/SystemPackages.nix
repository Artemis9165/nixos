{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    git
    kitty
    imagemagick
    librewolf
    keepassxc
    brightnessctl
    fetch
    power-profiles-daemon
  ];
}
