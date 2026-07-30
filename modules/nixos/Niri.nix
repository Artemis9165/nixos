{ inputs, ... }:

{
    imports = [ inputs.dms-plugin-registry.nixosModules.default ];
    programs.niri.enable = true;
    programs.dms-shell = {
	enable = true;
	systemd.enable = true;
	plugins = {
	    dankBatteryAlerts.enable = true;
	    dockerManager.enable = true;
	};
    };
    programs.dsearch = {
	enable = true;
	systemd.enable = true;
    };
    services.displayManager.dms-greeter = {
	enable = true;
	compositor.name = "niri";
	configHome = "/home/coding";
    };
}
