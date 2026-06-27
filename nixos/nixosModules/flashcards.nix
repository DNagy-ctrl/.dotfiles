{ pkgs, config, ... }:
{
  environment.systemPackages = with pkgs; [
    pkgs.unstable.anki
  ];
}
