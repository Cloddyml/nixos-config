{ pkgs, inputs, ... }:

{
  system.stateVersion = "25.11";
  nixpkgs.config.allowUnfree = true;
  
  environment.systemPackages = with pkgs; [
    # Agenix
    inputs.agenix.packages.${stdenv.hostPlatform.system}.default

    curl
    git
    kdePackages.ark
    p7zip
    unrar
    zip 
    unzip
    neovim
    tree
    wl-clipboard
    fzf
    fuzzel
    imv

    upower
    brightnessctl

    grim
    slurp

    networkmanagerapplet
    
    # For gui filemanager
    nautilus

    # For tui filemanager
    yazi

    qbittorrent

    xdg-utils

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