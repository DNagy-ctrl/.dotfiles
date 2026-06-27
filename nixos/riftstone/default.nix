{ pkgs, config, inputs, ... }:
{
 # Graphics
  hardware.graphics.enable = true;

  imports = [
    ./hardware-configuration.nix
    ../nixosModules # services management
    ../nixosModules/steam.nix
    ../nixosModules/minecraftServer.nix
  ];

  # User
  users.users.nagyd = {
    isNormalUser = true;
    description = "nagyd";
    extraGroups = [ "networkmanager" "wheel" ];
  };
  users.users.smp = {
    isNormalUser = true;
    description = "smp";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  networking.hostName = "riftstone";

  # BOOT NONSESE
  boot.initrd.systemd.enable = true;
  swapDevices = [{
    device = "/swapfile";
    size = 24*1024; # 24 GB
  }];
  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    device = "nodev";
  };
  boot.loader.efi.canTouchEfiVariables = true;

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  ###########################################################################
  #   !!!!!!!!!!!!!!!!!!!!!!!!!  DO NOT CHANGE !!!!!!!!!!!!!!!!!!!!!!!!!!   #

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.11"; # Did you read the comment?

}
