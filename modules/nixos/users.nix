{ pkgs, username, ... }:

{
  users.users.${username} = {
    isNormalUser = true;
    description = "Couguar";
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "networkmanager"
      "gamemode"
    ];
  };

  programs.zsh.enable = true;
}
