{
  pkgs,
  config,
  ...
}: {
  environment.systemPackages = with pkgs; [
    # Compilers
    # Rust
    cargo
    # Go
    go
    gcc

    # C
    # clang or gcc works
    clang

    javaPackages.compiler.temurin-bin.jre-24
    pkgs.unstable.jdk25
    jdk21
    jdk17
    jdk8

    (prismlauncher.override {
      jdks = [pkgs.unstable.jdk25 jdk21 jdk17 jdk8];
    })
  ];
}
