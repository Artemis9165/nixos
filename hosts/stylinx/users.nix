let
  usersFolder = ../../users;
in

{
  users.users.coding = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  users.users.school = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" ];
  };

  home-manager.users.coding = import (usersFolder + "/coding");
  home-manager.users.school = import (usersFolder + "/school");
}
