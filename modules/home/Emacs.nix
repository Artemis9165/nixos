{ pkgs, ... }:

{
  home.packages = with pkgs; [
    emacs-pgtk
    enchant
    hunspell
    hunspellDicts.en-us
    poppler
    texliveFull
  ];
}
