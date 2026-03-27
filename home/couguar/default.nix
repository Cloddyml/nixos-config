{ username, homeStateVersion, lib, pkgs, ... }:

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
    ".local/share/applications/.keep".text = "";
    ".local/share/kservices5/vscode-open-folder.desktop".text = ''
      [Desktop Entry]
      Type=Service
      X-KDE-ServiceTypes=KonqPopupMenu/Plugin
      MimeType=inode/directory;
      Actions=openInVSCode

      [Desktop Action openInVSCode]
      Name=Open in VS Code
      Icon=code
      Exec=code %f
    '';
  };

  home.activation.rebuildKdeCache = lib.hm.dag.entryAfter ["writeBoundary"] ''
    ${pkgs.kdePackages.kservice}/bin/kbuildsycoca6 --noincremental 2>/dev/null || true
  '';

  programs.home-manager.enable = true;
}
