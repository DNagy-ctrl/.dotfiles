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
}
