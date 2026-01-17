{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$terminal" = "alacritty";
    "$browser" = "zen";
    "$launcher" = "wofi";
    "$guifileman" = "dolphin";
    "$tuifileman" = "yazi";

    monitor = [
      ",prefferd,auto,1"
    ];

    exec-once = [
      "hypridle"
    ];

    env = [
      "HYPRCURSOR_THEME,Bibata-Modern-Classic"
      "HYPRCURSOR_SIZE,24"
      "XCURSOR_THEME,Bibata-Modern-Classic"
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

    misc = {
      disable_hyprland_logo = true;
      force_default_wallpaper = 0;
    };
  };
}
