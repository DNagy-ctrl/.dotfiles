{ pkgs, ... }:
{
# Hyprland
 programs.hyprland = {
  enable = true;
  xwayland.enable = true;
 };

# Waybar
 programs.waybar = {
   enable = true;
 };
 xdg.portal.enable = true;
 xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ]; 

# Sound

# Notifications

# App launcher

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
 programs.dconf = {
  enable = true;
  profiles.user.databases = [ {
   settings = {
    "org/gnome/desktop/interface" = {cursor-theme = "catppuccin-mocha-light-cursors";};
   }; lockAll = true;
  } ]; 
 };
}
