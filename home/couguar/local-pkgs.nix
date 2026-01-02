{ pkgs, ... }:

{
  home.packages = with pkgs; [
    throne
    telegram-desktop
    cmatrix
    mpv
    #ueberzugpp # for yazi
    starship
  ];
}
