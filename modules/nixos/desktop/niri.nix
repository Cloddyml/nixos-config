{ pkgs, ... }:

{
  programs.niri.enable = true;

  services.xserver = {
    enable = true;
    xkb = {
      layout = "us,ru";
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };
}