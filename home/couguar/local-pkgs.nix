{ pkgs, ... }:

{
  home.packages = with pkgs; [
    throne
    telegram-desktop
    cmatrix
    mpv
    vlc
    #ueberzugpp # for yazi
    starship
    vscode
  ];
}
