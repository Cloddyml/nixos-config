''
  prefer-no-csd

  input {
    keyboard {
      xkb {
        layout "us,ru"
        options "grp:alt_shift_toggle"
      }
    }

    touchpad {
      tap
      natural-scroll
      dwt
    }

    focus-follows-mouse max-scroll-amount="0%"
  }

  spawn-at-startup "noctalia-shell"
  spawn-at-startup "xwayland-satellite"

  layout {
    gaps 8

    shadow {
      on
    }
  }

  window-rule {
    geometry-corner-radius 12
    clip-to-geometry true
  }

  layer-rule {
    match namespace="^noctalia-overview.*"
    place-within-backdrop true
  }

  screenshot-path "~/Pictures/Screenshots/Screenshot from %Y-%m-%d %H-%M-%S.png"

  debug {
    honor-xdg-activation-with-invalid-serial
  }
''