{ config, pkgs, lib, ... }:
{
  allowed-unfree-packages = [
    "steam"
    "steam-unwrapped"
  ];

  # Enable Steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    gamescopeSession.enable = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];
  };

  programs.gamemode.enable = true;
  hardware.nvidia.modesetting.enable = true;

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
