{ config, pkgs, ... }:

{
  programs.firefox = {
    enable = true;
  };

  programs.chromium = {
    enable = true;
  };

  home.packages = with pkgs; [
    firefox
    chromium
  ];
}
