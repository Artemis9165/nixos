{ pkgs, ... }:

{
    home.packages = with pkgs; [
	git
	gh
	neovim
    ];
}
