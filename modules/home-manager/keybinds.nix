{ config, ... }:

{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mod, Q, exec, $terminal"
      "$mod, B, exec, $browser"
      "$mod, R, exec, $launcher"
      "$mod, E, exec, $guifileman"

      "$mod, C, killactive"
      "$mod, M, exit"
    ];
  };
}
