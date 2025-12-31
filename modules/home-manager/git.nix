{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Couguar";
    userEmail = "ingluemlp@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
