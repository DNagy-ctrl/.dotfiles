{ pkgs, ... }:
{
  hardware.flipperzero.enable = true;
  environment.systemPackages = with pkgs; [
    qFlipper
  ];
  # usb should work now
  services.udev.packages = [ pkgs.qFlipper ];
  users.users.nagyd = {
    extraGroups = [ "dialout" ];
  };
}
