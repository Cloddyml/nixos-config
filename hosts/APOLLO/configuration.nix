{
  imports = [
    ./hardware-configuration.nix
    ./disko-config.nix

    ./excluded-pkgs.nix
    ./local-pkgs.nix

    ../../modules/nixos/audio.nix
    ../../modules/nixos/bluetooth.nix
    ../../modules/nixos/boot.nix
    ../../modules/nixos/gaming.nix
    ../../modules/nixos/gui-filemanager.nix
    ../../modules/nixos/kbinputs.nix
    ../../modules/nixos/networking.nix
    ../../modules/nixos/postgresql.nix
    ../../modules/nixos/power.nix
    ../../modules/nixos/qbittorrent.nix
    ../../modules/nixos/ssh.nix
    ../../modules/nixos/timezone.nix
    ../../modules/nixos/tui-filemanager.nix
    ../../modules/nixos/users.nix

    ../../modules/nixos/development/npm.nix


    ../../modules/nixos/desktop/fonts.nix
    ../../modules/nixos/desktop/hyprland.nix
    ../../modules/nixos/desktop/sddm.nix

    ../../modules/nixos/throne.nix
  ];

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
}
