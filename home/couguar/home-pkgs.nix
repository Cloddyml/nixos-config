{ pkgs, ... }:

{
  home.packages = with pkgs; [
    telegram-desktop
    
    cmatrix
    
    mpv
    vlc

    alacritty
    starship
    zsh
    
    vscode

    macchina
    fastfetch

    vesktop # Discord

    pywal # Color-scheme
    waypaper # Change Wallpapers

    obsidian

    libreoffice-qt-fresh

    wofi
  ];
}
