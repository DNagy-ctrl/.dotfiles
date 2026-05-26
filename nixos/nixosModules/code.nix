{ pkgs, config, ... }:
{
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
