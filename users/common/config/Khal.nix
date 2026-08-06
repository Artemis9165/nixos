{
  programs = {
    vdirsyncer = {
      enable = true;
    };
    khal = {
      enable = true;
    };
  };
  services.vdirsyncer = {
    enable = true;
    frequency = "*:0/15";
  };
}
