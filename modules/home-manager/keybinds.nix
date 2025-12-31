{ config, ... }:

{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mod, Q, exec, $terminal"
      "$mod, B, exec, $browser"

      "$mod, C, killactive"
      "$mod, M, exit"
    ];
  };
}
