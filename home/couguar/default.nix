{ username, homeStateVersion, ... }:

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
