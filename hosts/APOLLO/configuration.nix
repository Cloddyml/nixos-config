{ pkgs, homeStateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./disko-config.nix

    ../../modules/nixos/audio.nix
    ../../modules/nixos/bluetooth.nix
    ../../modules/nixos/boot.nix
    ../../modules/nixos/fonts.nix
    ../../modules/nixos/hyprland.nix
    ../../modules/nixos/kbinputs.nix
    ../../modules/nixos/networking.nix
    ../../modules/nixos/sddm.nix
    ../../modules/nixos/timezone.nix
    ../../modules/nixos/users.nix
  ];

  environment.systemPackages = with pkgs; [
    curl
    git
    vim

    wayland
    wayland-protocols

    grim
    slurp

    networkmanagerapplet

    alsa-utils

    xdg-utils
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
  ];

  networking.hostName = hostname;

  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  };


  system.stateVersion = homeStateVersion;
  nixpkgs.config.allowUnfree = true;
}
