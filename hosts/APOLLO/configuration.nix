{ pkgs, homeStateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./disko-config.nix

    ./excluded-pkgs.nix

    ../../modules/nixos/audio.nix
    ../../modules/nixos/bluetooth.nix
    ../../modules/nixos/boot.nix
    ../../modules/nixos/fonts.nix
    ../../modules/nixos/gaming.nix
    ../../modules/nixos/gui-filemanager.nix
    ../../modules/nixos/hyprland.nix
    ../../modules/nixos/kbinputs.nix
    ../../modules/nixos/networking.nix
    ../../modules/nixos/power.nix
    ../../modules/nixos/qbittorrent.nix
    ../../modules/nixos/sddm.nix
    ../../modules/nixos/timezone.nix
    ../../modules/nixos/tui-filemanager.nix
    ../../modules/nixos/users.nix

    ../../modules/nixos/development/npm.nix
  ];

  environment.systemPackages = with pkgs; [
    curl
    git
    vim
    neovim
    tree
    wl-clipboard
    fzf

    wayland
    wayland-protocols

    upower

    grim
    slurp

    networkmanagerapplet

    alsa-utils
    
    # For gui filemanager
    kdePackages.dolphin
    kdePackages.kio
    kdePackages.plasma-integration

    # For tui filemanager
    yazi

    qbittorrent

    steam
    gamemode

    xdg-utils
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # For development
    # =====
    uv
    rustc
    cargo
    rustfmt
    rust-analyzer
    clippy
    nodejs
    nodePackages.npm
    # =====

    bat # Alt for cat cmd

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
