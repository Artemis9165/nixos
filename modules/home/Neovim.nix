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
    unzip
    curl
    wget
    ];
    programs.neovim = {
	enable = true;
	viAlias = true;
	vimAlias = true;
	sideloadInitLua = true;
    };
}
