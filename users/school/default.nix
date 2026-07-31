{ config, ... }:

let
  nixos_folder = ../..;
  modules = "${nixos_folder}/modules";
  dotfiles = "${nixos_folder}/users/coding/dotfiles";

  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
  configs = {
    emacs = "emacs";
  };
in

{
  imports = [
    ../common/default.nix
    ./packages.nix
    ./config/Starship.nix
    "${modules}/home/Emacs.nix"
  ];
  home = {
    username = "school";
    homeDirectory = "/home/school";
    stateVersion = "26.05";
  };
  xdg.configFile = builtins.mapAttrs
    (name: subpath: {
      source = create_symlink "${dotfiles}/${subpath}";
    })
    configs;
}
