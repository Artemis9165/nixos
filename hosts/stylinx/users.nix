{ inputs, ... }:

{
    users.users.coding = {
	isNormalUser = true;
	extraGroups = [ "wheel" "networkmanager" ];
    };
    home-manager.users.coding = import (inputs.self + "/users/coding");
}
