{
  imports = [
    ./hardware-configuration.nix
    ./disko-config.nix

    ./excluded-pkgs.nix
    ./local-pkgs.nix

    ../../modules/nixos
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
