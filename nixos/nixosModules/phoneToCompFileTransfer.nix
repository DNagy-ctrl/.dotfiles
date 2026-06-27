{ pkgs, config, ... }:
{
  services.gvfs.enable = true;
  services.udisks2.enable = true;
  environment.systemPackages = with pkgs; [
    jmtpfs  
  ];
}
