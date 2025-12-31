{ config, pkgs, lib, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history = {
      size = 100;
      path = "${config.xdg.dataHome}/zsh/history";
    };
  };

  home.packages = with pkgs; [
    zsh
  ];
}
