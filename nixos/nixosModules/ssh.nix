{ config, ... }:
{
  config = {
    services = {
      tailscale.enable = true;
      openssh = {
        enable = true;
        settings.PasswordAuthentication = true;
      };
    };
  };
  programs.zsh = {
    enable = true;
  };

  users.users.nagyd = {
    shell = pkgs.zsh;
  };
}
