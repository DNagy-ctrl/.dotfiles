{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
 };
  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      obsidian = nixpkgs.lib.nixosSystem {
        system = "x86-64 linux";
	modules = [ ./configuration.nix ./obsidian ./nixosModules ];
	specialArgs = {inherit inputs; };
      };
    };
  };
}
