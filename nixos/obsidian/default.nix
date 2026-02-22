{ pkgs, config, ... }:
{
  services.envfs.enable = true;

  services.thermald.enable = true;

  nixpkgs.config.allowUnsupportedSystem = true;

  services.rustdesk-server.enable = true; # only if self-hosting the server

  services.tlp = {
  enable = true;
  settings = {
    CPU_SCALING_GOVERNOR_ON_AC = "performance";
    CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
    CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
    CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
    CPU_MIN_PERF_ON_AC = 0;
    CPU_MAX_PERF_ON_AC = 100;
    CPU_MIN_PERF_ON_BAT = 0;
    CPU_MAX_PERF_ON_BAT = 50;

    # Optional helps save long term battery health
    #START_CHARGE_THRESH_BAT0 = 40; # 40 and below it starts to charge
    #STOP_CHARGE_THRESH_BAT0 = 80; # 80 and above it stops charging

         };
   };
   
   imports = [
    ./hardware-configuration.nix
    ../nixosModules # services management
  ];
   networking.hostName = "obsidian";
   
   # Font
   fonts.packages = with pkgs; [
    nerd-fonts.hack
   ];

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

#   boot = {
#    loader = {
#      systemd-boot.enable = true;
#      efi.canTouchEfiVariables = true;
#    };
#   };

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
    system.stateVersion = "25.05"; # Did you read the comment?
}
