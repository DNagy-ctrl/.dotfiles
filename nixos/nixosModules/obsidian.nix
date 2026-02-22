{ pkgs, config, ... }:
{
  allowed-unfree-packages = [
   "obsidian"
  ];
  environment.systemPackages = with pkgs; [
    obsidian
  ];
}
