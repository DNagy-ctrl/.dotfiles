{ pkgs, config, ... }:
{
  environment.systemPackages = with pkgs; [
    kdePackages.k3b
    cdrdao
    cdrtools
    cdrkit
  ];
  services.udisks2.enable = true;
  security.polkit.enable = true;
}
