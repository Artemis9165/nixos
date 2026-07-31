{ config, ... }:

let
  modules = "${config.home.homeDirectory}/nixos/modules";
in

{
  imports = [
    ./hardware-configuration.nix
    ./users.nix
    "${modules}/default.nix"
    "${modules}/nixos/Niri.nix"
  ];
  networking.hostName = "stylinx";
  system.stateVersion = "26.05";
}
