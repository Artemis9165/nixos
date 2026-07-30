{ inputs, ... }:

{
    imports = [
	(inputs.self + "/modules/home/Starship.nix")
	(inputs.self + "/modules/home/Kitty.nix")
    ];
    programs = {
	home-manager.enable = true;
	bash.enable = true;
    };
}

