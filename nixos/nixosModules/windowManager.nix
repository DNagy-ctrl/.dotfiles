{ pkgs, config, ... }:
{
  # Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  # Hyprlock
  programs.hyprlock = {
    enable = true;
  };
  # Waybar
  programs.waybar = {
    enable = true;
  };
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ]; 
  # Cursor
  environment.etc = {
  "xdg/gtk-2.0/gtkrc".text = ''
    gtk-cursor-theme-name="catppuccin-mocha-light-cursors"
  '';
  "xdg/gtk-3.0/settings.ini".text = ''
    [Settings]
    gtk-cursor-theme-name = catppuccin-mocha-light-cursors
  '';
  };
  programs = {
    dconf = {
      enable = true;
      profiles.user.databases = [ {
       settings = {
        "org/gnome/desktop/interface" = {cursor-theme = "catppuccin-mocha-light-cursors";};
       }; lockAll = true;
      } ]; 
     };
   };
  # Notifications 
  services.dbus.enable = true;
  # Font
  fonts.packages = with pkgs; [
    nerd-fonts.hack
  ];
  environment.systemPackages = with pkgs; [
    # Notifications 
    dunst
    libnotify
    # Brightness
    brightnessctl
    # Cursor
    catppuccin-cursors.mochaLight
    # Wallpaper
    hyprpaper
    # File manager
    kdePackages.dolphin
    yazi
    # Application launcher
    fuzzel
    # Log in
    ly
    # Screenshots
    grim
    slurp
    # Key bind setter
    kanata
    # Bluetooth
    bluez
    # Stiky notes
    xpad
  ];

  # Nix switch
  programs = {
    nh = {
      enable = true;
      flake = "/home/nagyd/.dotfiles/nixos/";
    };
  };

  nixpkgs.config.allowUnsupportedSystem = true;
  networking.networkmanager.enable = true;
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;
  # Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

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
  console.keyMap = "uk";
}
