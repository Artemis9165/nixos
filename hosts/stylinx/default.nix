let
  modules = ../../modules;
in

{
  imports = [
    ./hardware-configuration.nix
    "${modules}/default.nix"
    "${modules}/nixos/Niri.nix"
    "${modules}/nixos/TLP.nix"
    ./users.nix
  ];
  networking.hostName = "Stylinx-Neptune";
  system.stateVersion = "26.05";
}
