{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [ thttpd ];
  services.radicale = {
    enable = true;
    settings = {
      server.hosts = [ "0.0.0.0:5232" ];
      auth = {
        type = "htpasswd";
        htpasswd_filename = "";
        htpasswd_encryption = "bcrypt";
      };
    };
  };
}
