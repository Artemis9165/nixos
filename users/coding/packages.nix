{ pkgs, ... }:

{
  home.packages = with pkgs; [
    tmux
    git
    gh
  ];
}
