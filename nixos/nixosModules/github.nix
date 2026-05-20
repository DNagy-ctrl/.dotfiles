{ pkgs, config, ... }:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Github
    wget
    gh
    git
  ];
}
