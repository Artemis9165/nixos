{ config, ... }:

let
  nixos_folder = ../..;
  modules = "${nixos_folder}/modules";
  dotfiles = "${nixos_folder}/users/common/dotfiles";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
  configs = {
    niri = "niri";
    kitty = "kitty";
    fetch = "fetch";
  };
in

{
  imports = [
    ./packages.nix
    "${modules}/home/Starship.nix"
    "${modules}/home/Fetch.nix"
  ];
  programs = {
    home-manager.enable = true;
    bash.enable = true;
  };
  xdg.configFile = builtins.mapAttrs
    (name: subpath: {
      source = create_symlink "${dotfiles}/${subpath}";
    })
    configs;
}

