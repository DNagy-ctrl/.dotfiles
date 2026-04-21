{ config, pkgs, ... }:
{
  networking.networkmanager.enable = true;
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;
  services.displayManager.ly = {
      enable = true;
      settings = {
        animation = "matrix";
        bigclock = true;
        brightness_down_cmd = "/run/current-system/sw/bin/brightnessctl -q -n s 5%-";
        brightness_down_key = "F5";
        brightness_up_cmd = "/run/current-system/sw/bin/brightnessctl -q -n s +5%";
        brightness_up_key = "F6";
        clear_password = true;
        setup_cmd = "";
      };
      package = pkgs.unstable.ly;
  };
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  time.timeZone = "Europe/London";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };
  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };
  # Configure console keymap
  console.keyMap = "uk";

  # Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  # Nix switch
  programs = {
    nh = {
      enable = true;
      flake = "/home/nagyd/.dotfiles/nixos/";
    };
  };
}
