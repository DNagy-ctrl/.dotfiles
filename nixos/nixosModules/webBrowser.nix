{ pkgs, config, ... }:
{
  allowed-unfree-packages = [
   "google-chrome"
  ];
  environment.systemPackages = with pkgs; [
    firefox
    w3m
    google-chrome
  ];
}
