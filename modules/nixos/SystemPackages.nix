{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    git
    kitty
    librewolf
    keepassxc
  ];
}
