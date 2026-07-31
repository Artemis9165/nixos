{ config, ... }:

{
  users.users.coding = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  home-manager.users.coding = import "${config.home.homeDirectory}/nixos/users/coding";
}
