{ config, pkgs, ... }:
{
  services.tailscale.enable = true;

  services.openssh = {
    enable = true;
    settings.PasswordAuthentication = true;
  };

  programs.zsh = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    waypipe
  ];
}
