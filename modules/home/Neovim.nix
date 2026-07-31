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
    rustc
    cargo
    rust-analyzer
    ];
    programs.neovim = {
	enable = true;
	viAlias = true;
	vimAlias = true;
	sideloadInitLua = true;
    };
}
