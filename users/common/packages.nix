{ pkgs, ... }:

{
    home.packages = with pkgs; [
    	kitty
        grim
        slurp
        wl-clipboard
    ];
}
