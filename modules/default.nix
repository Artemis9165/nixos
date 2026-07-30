{ ... }:

{
    imports = [
	./nixos/BootLoader.nix
	./nixos/SystemPackages.nix
	./nixos/HomeManager.nix
	./nixos/Fonts.nix
    ];
    networking.networkmanager.enable = true;
    time.timeZone = "America/New_York";
}
