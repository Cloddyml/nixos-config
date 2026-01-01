{ inputs, config, pkgs, username, hostname, homeStateVersion, ... }:

{
  imports = [
    ../../modules/home-manager/ags.nix
    ../../modules/home-manager/alacritty.nix
    ../../modules/home-manager/browsers.nix
    ../../modules/home-manager/fastfetch.nix
    ../../modules/home-manager/git.nix
    ../../modules/home-manager/hyprland.nix
    ../../modules/home-manager/hyprpanel.nix
    ../../modules/home-manager/keybinds.nix
    ../../modules/home-manager/settings.nix
    ../../modules/home-manager/zsh.nix
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
