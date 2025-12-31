{
  description = "First NixOS configuration with flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, disko, ... }@inputs:
    let
      system = "x86_64-linux";

      # Helper function to create NixOS configuration
      mkHost = hostname: username: modules: nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs hostname username; };
        modules = [
          disko.nixosModules.disko
          ./hosts/${hostname}/configuration.nix
        ] ++ modules;
      };
    in
    {
      nixosConfigurations = {
        APOLLO = mkHost "APOLLO" "couguar" [];
      };
    };
}
