{ inputs, ... }:

{
    boot.loader = {
	grub = {
	    enable = true;
	    device = "nodev";
	    efiSupport = true;
	    gfxmodeEfi = "2560x1440";
	    gfxpayloadEfi = "keep";
	    theme = (inputs.self + "/themes/darkmatter");
	};
	efi.canTouchEfiVariables = true;
    };
}
