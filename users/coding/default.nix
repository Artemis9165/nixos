{ config, inputs, ... }:

let
    dotfiles = (inputs.self + "/users/coding/dotfiles";
    create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
    configs = {
	nvim = "nvim";
    };
in

{
    imports = [
    	(inputs.self + "/modules/home/Neovim.nix")
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
    xdg.configFile = builtins.mapAttrs (name: subpath: {
	source = create_symlink "${dotfiles}/${subpath}";
	recursive = true;
    }) configs;
}
