{ inputs, ... }:

{
    imports = [
	(inputs.self + "/modules/home/Git.nix")
	./packages.nix
    ];
    home = {
	username = "coding";
	homeDirectory = "/home/coding";
	stateVersion = "26.05";
    };
    programs.home-manager.enable = true;
}
