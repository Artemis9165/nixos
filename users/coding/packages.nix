{ pkgs, ... }:

{
    home.packages = with pkgs; [
	unzip
	git
	gh
	neovim
    ];
}
