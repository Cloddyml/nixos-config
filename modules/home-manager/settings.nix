{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$terminal" = "alacritty";

    monitor = [
      ",prefferd,auto,1"
    ];

    env = [
      "XCURSOR_SIZE,24"
    ];

    input = {
      kb_layout = "us,ru";
      kb_options = "grp:alt_shift_toggle";

      follow_mouse = 1;
      sensitivity = 0;

      touchpad = {
        natural_scroll = true;
	disable_while_typing = true;
	tap-to-click = true;
      };
    };
  };
}
