{ pkgs, ... }:

{
    home.packages = with pkgs; [
	ripgrep
	fd
	fzf
	tree-sitter-cli
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
