{ pkgs, ... }:

{
  home.file = {
    "Pictures/Screenshots/.keep".text = "";
    "Pictures/Wallpapers/.keep".text = "";
    "Documents/Projects/.keep".text = "";
    ".local/share/nautilus/scripts/Open with VS Code" = {
      text = ''
        #!/bin/sh
        code "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS"
      '';
      executable = true;
    };
  };

  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    gtk4.theme = null;
  };

  programs.home-manager.enable = true;
}
