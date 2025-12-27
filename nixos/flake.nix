{
  inputs = {
  #  nixpks = {
  #    url = "github:NixOS/nixpkgs/nixos-23.05";
  #};
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };
  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86-64 linux";
	modules = [ ./configuration.nix ];
      };
    };
  };
}
