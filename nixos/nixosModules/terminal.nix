{ pkgs, config, ... }:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  allowed-unfree-packages = [
   "aseprite"
  ];
  environment.systemPackages = with pkgs; [
    # Terminal
    ghostty
    alacritty
    kitty
    # CLI tools
    tree
    yt-dlp
    powertop
    unzip
    btop
    htop
    nvtopPackages.intel
    arduino-ide
    # Fun CLI stuff
    # More at https://github.com/agarrharr/awesome-cli-apps.git
    peaclock
    cmatrix
    pipes
    cbonsai
    asciiquarium-transparent
    sl
    cowsay
    figlet
    fortune
    aalib
    # Bible App -> https://github.com/BibleJS/BibleApp.git
    # Cat
    wayneko
    # Mark down viwers
    glow
    litemdview
    presenterm
    mdcat
    # Image/Video viewer/editor
    ffmpeg
    mpv
    tiv
    feh
    kdePackages.gwenview
    aseprite
    # PDF viwer
    zathura 
    # Server stuff
    docker
    # File sharer
    croc
    # Monitor info
    xorg.xrandr
    # Windows app emulator
    wine
  ];

  programs.zsh = {
    enable = true;
  };

  users.users.nagyd = {
    shell = pkgs.zsh;
  };
}
