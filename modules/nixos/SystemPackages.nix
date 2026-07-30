{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
	vim
	kitty
	librewolf
    ];
}
