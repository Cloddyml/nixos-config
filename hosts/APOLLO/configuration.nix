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
      substituters      = [ "https://niri.cachix.org" ];
      trusted-public-keys = [ "niri.cachix.org-1:Wv0OmO7PsuocRKzfDoJ3mulSl7Z6oezYhGhR+3W2964=" ];
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  };
}
