{ inputs, ... }:

{
    imports = [
	(inputs.self + "/modules/home/Starship.nix")
    ];
    programs = {
	home-manager.enable = true;
	bash.enable = true;
    };
}

