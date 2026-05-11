{ pkgs, config, ... }:
{
  allowed-unfree-packages = [
   "vscode"
  ];
  environment.systemPackages = with pkgs; [
    vscode
  ];
}

