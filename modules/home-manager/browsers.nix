{ config, pkgs, ... }:

{
  programs.firefox = {
    enable = false;
  };

  programs.zen-browser = {
    enable = true;
  };

  programs.chromium = {
    enable = true;
  };
}
