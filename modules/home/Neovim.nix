{ pkgs, ... }:

{
    home.packages = with pkgs; [
	ripgrep
	fd
	fzf
	nodejs
	nil
	nixpkgs-fmt
    ];
    programs.neovim = {
	enable = true;
	viAlias = true;
	vimAlias = true;
    };
}
