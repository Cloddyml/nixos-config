{ pkgs, ... }:

{
  programs.niri.enable = true;

  services.xserver = {
    enable = true;
    xkb = {
      layout = "us,ru";
      options = "grp:alt_shift_toggle";
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };
}