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
  ./packages.nix
  ./ssh.nix
  ./obsidian.nix
  ./printing.nix
  ./tmux.nix
  ./flipper.nix
  ./waydroid.nix
  ./vscode.nix
  ./minecraft.nix
  ./webBrowser.nix
  ./windowManager.nix
  ./battery.nix
  ./textEditor.nix
  ./github.nix
  ./code.nix
  ./terminal.nix
 ];
}
