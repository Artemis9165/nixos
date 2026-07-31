{ config, inputs, ... }:

let
    dotfiles = "${config.home.homeDirectory}/nixos/users/common/dotfiles";
    create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
    configs = {
        niri = "niri";
    	kitty = "kitty";
    };
in

{
    imports = [
        ./packages.nix
    	(inputs.self + "/modules/home/Starship.nix")
    ];
    programs = {
    	home-manager.enable = true;
    	bash.enable = true;
    };
    xdg.configFile = builtins.mapAttrs (name: subpath: {
	    source = create_symlink "${dotfiles}/${subpath}";
    }) configs;
}

