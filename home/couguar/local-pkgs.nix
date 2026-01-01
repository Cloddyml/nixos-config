{ pkgs, ... }:

{
  home.packages = with pkgs; [
    throne
    telegram-desktop
    cmatrix
  ];
}
