{
  imports = [
    ./nixos/BootLoader.nix
    ./nixos/Bluetooth.nix
    ./nixos/SystemPackages.nix
    ./nixos/HomeManager.nix
    ./nixos/Keyd.nix
    ./nixos/Fonts.nix
    ./nixos/LocalSend.nix
    ./nixos/Radicale.nix
  ];
  networking.networkmanager.enable = true;
  time.timeZone = "America/New_York";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
