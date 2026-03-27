''
  binds {
    Mod+Q { spawn "alacritty"; }
    Mod+B { spawn "zen-beta"; }
    Mod+E { spawn "nautilus"; }

    Mod+R { spawn "noctalia-shell" "ipc" "call" "launcher" "toggle"; }
    Mod+L { spawn "noctalia-shell" "ipc" "call" "lockScreen" "lock"; }
    Mod+W { spawn "noctalia-shell" "ipc" "call" "controlCenter" "toggle"; }

    XF86AudioRaiseVolume  { spawn "noctalia-shell" "ipc" "call" "volume" "increase"; }
    XF86AudioLowerVolume  { spawn "noctalia-shell" "ipc" "call" "volume" "decrease"; }
    XF86AudioMute         { spawn "noctalia-shell" "ipc" "call" "volume" "muteOutput"; }
    XF86MonBrightnessUp   { spawn "noctalia-shell" "ipc" "call" "brightness" "increase"; }
    XF86MonBrightnessDown { spawn "noctalia-shell" "ipc" "call" "brightness" "decrease"; }

    Mod+C { close-window; }
    Mod+Shift+E { quit; }

    Mod+V { spawn-sh "cliphist list | fuzzel --dmenu --with-nth 2 | cliphist decode | wl-copy"; }

    Print     { screenshot; }
    Mod+Print { screenshot-window; }

    Mod+O { toggle-overview; }

    Mod+1 { focus-workspace 1; }
    Mod+2 { focus-workspace 2; }
    Mod+3 { focus-workspace 3; }
    Mod+4 { focus-workspace 4; }
    Mod+5 { focus-workspace 5; }
    Mod+6 { focus-workspace 6; }
    Mod+7 { focus-workspace 7; }
    Mod+8 { focus-workspace 8; }
    Mod+9 { focus-workspace 9; }

    Mod+Shift+1 { move-window-to-workspace 1; }
    Mod+Shift+2 { move-window-to-workspace 2; }
    Mod+Shift+3 { move-window-to-workspace 3; }
    Mod+Shift+4 { move-window-to-workspace 4; }
    Mod+Shift+5 { move-window-to-workspace 5; }

    Mod+Left  { focus-column-left; }
    Mod+Right { focus-column-right; }
    Mod+Up    { focus-window-up; }
    Mod+Down  { focus-window-down; }

    Mod+H         { focus-column-left; }
    Mod+J         { focus-window-down; }
    Mod+K         { focus-window-up; }
    Mod+Semicolon { focus-column-right; }
  }
''