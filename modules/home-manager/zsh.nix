{ config, pkgs, lib, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    dotDir = "${config.home.homeDirectory}/.config/zsh";

    history = {
      size = 100;
      path = "${config.home.homeDirectory}/.local/share/zsh/history";
    };
  };

  home.packages = with pkgs; [
    zsh
  ];
}
