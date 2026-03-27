{ username, ... }:

{
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
}