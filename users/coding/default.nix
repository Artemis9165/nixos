{ ... }:

{
    imports = [
    	../common/default.nix
	./config/Git.nix
	./packages.nix
    ];
    home = {
	username = "coding";
	homeDirectory = "/home/coding";
	stateVersion = "26.05";
    };
}
