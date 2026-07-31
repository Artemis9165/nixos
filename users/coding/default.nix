{ ... }:

{
    imports = [
    	../common/default.nix
	./packages.nix
	./config/Git.nix
	./config/Starship.nix
    ];
    home = {
	username = "coding";
	homeDirectory = "/home/coding";
	stateVersion = "26.05";
    };
}
