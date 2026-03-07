{ pkgs, ... }:
{
  services.dbus.enable = true;
  environment.systemPackages = with pkgs; [
    dunst
    libnotify
  ];
}
