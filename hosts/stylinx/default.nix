{ inputs, ... }:

{
    imports = [
	./hardware-configuration.nix
	./users.nix
	(inputs.self + "/modules/default.nix")
	(inputs.self + "/modules/nixos/Niri.nix")
    ];
    networking.hostName = "stylinx";
    system.stateVersion = "26.05";
}
