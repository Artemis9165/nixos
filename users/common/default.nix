{ inputs, ... }:

let
    dotfiles = (inputs.self + "/users/common/dotfiles");
    create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
    configs = {
        niri = "niri"
    };
in

{
    imports = [
        ./packages.nix
    	(inputs.self + "/modules/home/Starship.nix")
    	(inputs.self + "/modules/home/Kitty.nix")
    ];
    programs = {
    	home-manager.enable = true;
    	bash.enable = true;
    };
    xdg.configFile = builtins.mapAttrs (name: subpath: {
	    source = create_symlink "${dotfiles}/${subpath}";
	    recursive = true;
    }) configs;
}

