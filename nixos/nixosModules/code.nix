{ pkgs, config, ... }:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  allowed-unfree-packages = [
   "aseprite"
  ];
  environment.systemPackages = with pkgs; [
    # Rust
    cargo
    # Go
    go
    gcc
    #
    javaPackages.compiler.temurin-bin.jre-24
    pkgs.unstable.jdk25
  ];
}
