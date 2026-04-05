{ pkgs, ... }:
{
  programs = {
    nh = {
      enable = true;
      flake = "/home/nagyd/.dotfiles/nixos/";
    };
   };
}
