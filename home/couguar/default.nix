{ inputs, config, pkgs, username, hostname, homeStateVersion, ... }:

{
  imports = [
    ./local-pkgs.nix

    ../../modules/home-manager/browsers.nix
    ../../modules/home-manager/fastfetch.nix
    ../../modules/home-manager/git.nix
    ../../modules/home-manager/mpv.nix
    ../../modules/home-manager/vesktop.nix
    ../../modules/home-manager/vscode.nix

    # Desktop
    ../../modules/home-manager/desktop/ags.nix
    ../../modules/home-manager/desktop/hyprland.nix
    ../../modules/home-manager/desktop/hyprpanel.nix
    ../../modules/home-manager/desktop/keybinds.nix
    ../../modules/home-manager/desktop/pywal.nix
    ../../modules/home-manager/desktop/settings.nix
    ../../modules/home-manager/desktop/wofi.nix

    # Shell
    ../../modules/home-manager/shell/alacritty.nix
    ../../modules/home-manager/shell/starship.nix
    ../../modules/home-manager/shell/zsh.nix
  ];

  home = {
    username = username;
    homeDirectory = "/home/${username}";
    stateVersion = "${homeStateVersion}";
  };

  home.sessionVariables = {
    TERMINAL = "alacritty";
    EDITOR = "nvim";
    BROWSER = "zen";
  };
  
  xdg = {
    enable = true;

    userDirs = {
      enable = true;
      createDirectories = true;
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
    ".local/share/applications/.keep".text = "";
  };

  programs.home-manager.enable = true;
}
