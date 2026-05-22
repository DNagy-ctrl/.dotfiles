{ config, pkgs, inputs, ... }:

let
  minecraft-26_1_2 = pkgs.stdenv.mkDerivation {
    name = "minecraft-server-26.1.2";
    src = pkgs.fetchurl {
      url = "https://piston-data.mojang.com/v1/objects/97ccd4c0ed3f81bbb7bfacddd1090b0c56f9bc51/server.jar";
      sha1 = "97ccd4c0ed3f81bbb7bfacddd1090b0c56f9bc51";
    };
    dontUnpack = true;
    installPhase = ''
      mkdir -p $out/bin $out/lib
      cp $src $out/lib/minecraft-server.jar
      cat > $out/bin/minecraft-server << EOF
      #!/bin/sh
      exec ${pkgs.unstable.jdk25}/bin/java \$@ -jar $out/lib/minecraft-server.jar nogui
      EOF
      chmod +x $out/bin/minecraft-server
    '';
  };
in
{
  nixpkgs.config.allowUnfree = true;

  services.minecraft-server = {
    enable = true;
    eula = true;
    openFirewall = true;
    package = minecraft-26_1_2;
    declarative = false;
    serverProperties = {
      server-port = 25565;
      gamemode = "survival";
      difficulty = "normal";
      max-players = 2;
      motd = "Nagy";
      level-name = "myworld";
      online-mode = true;
      white-list = true;
    };
  };
}
