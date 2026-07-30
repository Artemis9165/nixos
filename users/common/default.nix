{ inputs, ... }:

{
    imports = [
	(inputs.self + "/modules/home/Starship.nix")
    ];
}

