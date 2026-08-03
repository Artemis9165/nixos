{ ... }:

{
  programs.fetch = {
    enable = true;
    info = [
      "host"
      "kernel"
      "uptime"
      "packages"
      "shell"
      "wm"
      "theme"
      "icons"
      "font"
      "terminal"
      "cpu"
      "memory"
      "swap"
      "disk"
      "battery"
    ];
    labelColor = "blue";
    separator = ":";
    shading = "█░.Mm";
    light = "top-left";
    spin = "xyz";
    speed = 1.0;
    size = 1.0;
    height = 1.0;
  };
}
