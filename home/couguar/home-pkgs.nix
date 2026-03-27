{ pkgs, ... }:

{
  home.packages = with pkgs; [
    telegram-desktop
    bitwarden-desktop
    yandex-music
    
    cmatrix

    obsidian

    libreoffice-qt-fresh

    prismlauncher # Minecraft launcher

    dbeaver-bin # Universal SQL Client
  ];
}
