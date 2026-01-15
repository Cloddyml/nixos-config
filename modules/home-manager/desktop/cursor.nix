{
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.bibata-cursors;
    name    = "Bibata-Modern-Classic";
    size    = 24;
  };

  home.sessionVariables = {
    HYPRCURSOR_THEME = "Bibata-Modern-Classic";
    HYPRCURSOR_SIZE  = "24";
    XCURSOR_THEME    = "Bibata-Modern-Classic";
    XCURSOR_SIZE     = "24";
  };
}