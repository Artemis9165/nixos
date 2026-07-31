{ ... }:

let
  usersFolder = ../../users;
in

{
  users.users.coding = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  home-manager.users.coding = import (usersFolder + "/coding");
}
