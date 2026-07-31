{ config, ... }:

let
  nixos_folder = ../..;
  modules = "${nixos_folder}/modules";
  dotfiles = "${nixos_folder}/users/coding/dotfiles";

  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
  configs = {
    nvim = "nvim";
    tmux = "tmux";
  };
in

{
  imports = [
    "${modules}/home/Neovim.nix"
    ../common/default.nix
    ./packages.nix
    ./config/Git.nix
    ./config/Starship.nix
  ];
  home = {
    username = "coding";
    homeDirectory = "/home/coding";
    stateVersion = "26.05";
  };
  xdg.configFile = builtins.mapAttrs
    (name: subpath: {
      source = create_symlink "${dotfiles}/${subpath}";
    })
    configs;
}
