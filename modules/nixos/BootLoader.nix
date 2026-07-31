{ config, ... }:

{
  boot.loader = {
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      gfxmodeEfi = "2560x1440";
      gfxpayloadEfi = "keep";
      theme = "${config.home.homeDirectory}/nixos/themes/darkmatter";
    };
    efi.canTouchEfiVariables = true;
  };
}
