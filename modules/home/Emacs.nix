{ pkgs, ... }:

{
  home.packages = with pkgs; [
    enchant
    hunspell
    hunspellDicts.en-us
    poppler
    texliveFull
  ];
  programs.emacs = {
    enable = true;
    package = pkgs.emacs-pgtk;
  };
}
