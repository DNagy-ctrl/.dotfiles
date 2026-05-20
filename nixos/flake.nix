{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
 };
  outputs = { self, nixpkgs, nixpkgs-unstable, ... }@inputs: {
    nixosConfigurations = {
      obsidian = nixpkgs.lib.nixosSystem {
        system = "x86-64 linux";
	modules = [ ./obsidian ./nixosModules 
      {
        nixpkgs.overlays = [
          (final: prev: {
            unstable = import nixpkgs-unstable {
#              inherit system;
              system = "x86_64-linux";
            };
#            custom = {
#              mountui = mountui.packages.${system}.default;
#            };
          })
        ];
      }
  ];
	specialArgs = {inherit inputs; };
      };
    };

    nixosConfigurations = {
      riftstone = nixpkgs.lib.nixosSystem {
        system = "x86-64 linux";
	modules = [ ./riftstone ./nixosModules 
      {
        nixpkgs.overlays = [
          (final: prev: {
            unstable = import nixpkgs-unstable {
#              inherit system;
              system = "x86_64-linux";
            };
#            custom = {
#              mountui = mountui.packages.${system}.default;
#            };
          })
        ];
      }
  ];
	specialArgs = {inherit inputs; };
      };
    };
  };
}
