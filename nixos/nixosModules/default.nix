{ config, lib, ... }:
{
  # Pick and select the unfree packages
  # In the form:
  # allowed-unfree-packages = [
  #  "nameOfPackage"
  # ];
  options.allowed-unfree-packages = lib.mkOption {
    type = lib.types.listOf lib.types.str;
  };

  config.nixpkgs.config.allowUnfreePredicate =
    pkg: builtins.elem (lib.getName pkg) config.allowed-unfree-packages; 

 imports = [
  ./windowManager.nix
  ./chrome.nix
  ./packages.nix
  ./users.nix
  ./ssh.nix
  ./obsidian.nix
  ./printing.nix
  ./tmux.nix
 ];
}
