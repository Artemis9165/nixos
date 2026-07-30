{ inputs, ... }:

{
    imports = [
	(inputs.self + "/modules/home/Starship.nix")
    ];
    programs = {
	home-manager.enable = true;
	kitty.enable = true;
	bash.enable = true;
    };
}

