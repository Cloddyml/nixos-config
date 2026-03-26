{ pkgs, ... }:

{
  programs.niri.enable = true;

  services.xserver = {
    enable = true;
    xkb = {
      layout = "us,ru";
      options = "";
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };
}