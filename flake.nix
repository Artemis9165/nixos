{
    inputs = {
	nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
	home-manager = {
	    url = "github:nix-community/home-manager";
	    inputs.nixpkgs.follows = "nixpkgs";
	};
    };
    outputs = inputs@{ self, nixpkgs, home-manager, ... }: {
	nixosConfigurations.stylinx = nixpkgs.lib.nixosSystem {
	    system = "x86_64-linux";
	    specialArgs = {
		inherit inputs;
	    };
	    modules = [
		./hosts/stylinx/default.nix
	    ];
	};
    };
}

