{ config, lib, pkgs, username, ... }:

{
  users.users.${username} = {
    isNormalUser = true;
    description = "Couguar";
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };

  programs.zsh.enable = true;
}
