{ pkgs, config, ... }:
{
  allowed-unfree-packages = [
   "google-chrome"
  ];
  environment.systemPackages = with pkgs; [
    google-chrome
  ];
}
