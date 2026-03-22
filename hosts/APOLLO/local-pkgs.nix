{ pkgs, homeStateVersion, inputs, ... }:

{
  system.stateVersion = homeStateVersion;
  nixpkgs.config.allowUnfree = true;
  
  environment.systemPackages = with pkgs; [
    # Agenix
    inputs.agenix.packages.${stdenv.hostPlatform.system}.default

    curl
    git
    unzip
    vim
    neovim
    tree
    wl-clipboard
    fzf

    wayland
    wayland-protocols

    upower

    brightnessctl

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

    # Niri ecosystem
    xwayland-satellite
  ];
}