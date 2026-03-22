{ pkgs, ... }:

{
  home.packages = with pkgs; [
    telegram-desktop
    bitwarden-desktop
    
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

    obsidian

    libreoffice-qt-fresh

    prismlauncher # Minecraft launcher

    dbeaver-bin # Universal SQL Client
  ];
}
