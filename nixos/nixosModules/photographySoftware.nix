{ pkgs, config, ... }:
{
  environment.systemPackages = with pkgs; [
    pkgs.unstable.vkdt
    pkgs.unstable.darktable
    rawtherapee
  ];
}
