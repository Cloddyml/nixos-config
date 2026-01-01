{
  description = "My first NixOS configuration with flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";

    astal.url = "github:aylur/astal";

    ags.url = "github:aylur/ags";

    hyprpanel = {
      url = "github:Jas-SinghFSU/HyprPanel";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
	home-manager.follows = "home-manager";
      };
    };
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
		inputs.ags.homeManagerModules.default
		inputs.zen-browser.homeModules.beta
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
