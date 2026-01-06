{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;

    gamescopeSession = true;
  };

  programs.gamemode = {
    enable = true;
    enableRenice = true;
  };
}