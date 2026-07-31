{ pkgs, ... }:

{
    home.packages = with pkgs; [
	ripgrep
	fd
	fzf
	nodejs
	nil
	nixpkgs-fmt
    gcc
    ];
    programs.neovim = {
	enable = true;
	viAlias = true;
	vimAlias = true;
    };
}
