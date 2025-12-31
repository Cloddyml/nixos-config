{
  description = "First NixOS configuration with flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs, home-manager, disko, hyprland, ... }@inputs:
    let
      system = "x86_64-linux";
      homeStateVersion = "25.11";

      # Helper function to create NixOS configuration
      mkHost = hostname: username: modules: nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs hostname username homeStateVersion; };
        modules = [
          disko.nixosModules.disko
          ./hosts/${hostname}/configuration.nix

	  home-manager.nixosModules.home-manager
	  {
	    home-manager = {
	      useGlobalPkgs = true;
	      useUserPackages = true;
	      backupFileExtension = "backup";
	      extraSpecialArgs = { inherit inputs hostname username homeStateVersion; };
	      users.${username} = import ./home/${username};
	      sharedModules = [
	        inputs.hyprland.homeManagerModules.default
	      ];
	    };
	  }
        ] ++ modules;
      };
    in
    {
      nixosConfigurations = {
        APOLLO = mkHost "APOLLO" "couguar" [];
      };
    };
}
