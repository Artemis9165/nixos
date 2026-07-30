{ ... }:

{
    imports = [
	./nixos/BootLoader.nix
	./nixos/SystemPackages.nix
	./nixos/HomeManager.nix
    ];
    networking.networkmanager.enable = true;
    time.timeZone = "America/New_York";
}
