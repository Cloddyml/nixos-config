{ config, pkgs, ... }:

{
  programs.zen-browser = {
    enable = true;
  };

  programs.chromium = {
    enable = true;
  };
}
