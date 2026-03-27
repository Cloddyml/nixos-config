{ username, homeStateVersion, pkgs, ... }:

{
  imports = [
    ./home-pkgs.nix

    ../../modules/home-manager
  ];

  home = {
    username = username;
    homeDirectory = "/home/${username}";
    stateVersion = "${homeStateVersion}";
  };

  home.sessionVariables = {
    TERMINAL = "alacritty";
    EDITOR = "nvim";
    BROWSER = "zen-beta";
    NIXOS_OZONE_WL = "1";
  };
  
  xdg = {
    enable = true;

    userDirs = {
      enable = true;
      createDirectories = true;
      setSessionVariables = false;
      documents = "/home/${username}/Documents";
      download = "/home/${username}/Downloads";
      pictures = "/home/${username}/Pictures";
      videos = "/home/${username}/Videos";
      desktop = "/home/${username}/Desktop";
    };
  };

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
