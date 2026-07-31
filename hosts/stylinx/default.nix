{ ... }:

let
  modules = ../../modules;
in

{
  imports = [
    ./hardware-configuration.nix
    "${modules}/default.nix"
    "${modules}/nixos/Niri.nix"
    ./users.nix
  ];
  networking.hostName = "stylinx";
  system.stateVersion = "26.05";
}
