{ pkgs, config, ... }:
{
  allowed-unfree-packages = [
    "lunarclient"
  ];
  environment.systemPackages = with pkgs; [
    prismlauncher
    lunar-client
  ];
}
