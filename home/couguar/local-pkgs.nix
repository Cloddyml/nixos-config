{ pkgs, ... }:

{
  home.packages = with pkgs; [
    throne
    telegram-desktop
    cmatrix
    mpv
    vlc
    starship
    vscode

    macchina
    fastfetch

    vesktop # Discord
  ];
}
