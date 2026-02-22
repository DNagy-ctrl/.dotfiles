{ pkgs, ... }:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Text editor
    neovim
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    # For nvim
    nodejs
    python3
    curlFull
    typst
    tinymist
    websocat
    wl-clipboard
    # Github
    wget
    gh
    git
    # Terminal
    ghostty
    alacritty
    kitty
    # Web browser
    firefox
    w3m
    # CLI tools
    tree
    yt-dlp
    powertop
    unzip
    # Fun CLI stuff
    # More at https://github.com/agarrharr/awesome-cli-apps.git
    cmatrix
    pipes
    cbonsai
    asciiquarium-transparent
    sl
    cowsay
    figlet
    fortune
    aalib
    oneko
    # Bible App -> https://github.com/BibleJS/BibleApp.git
    # Games
    prismlauncher
    # Rust
    cargo
    #
    javaPackages.compiler.temurin-bin.jre-24
    # Battery stuff
    # Power manager
    tlp
    # CPU performance scaling
     # Stops CPU overheating
    thermald
    # Mark down viwers
    glow
    litemdview
    presenterm
    mdcat
    # File sharer
    croc


    # idk
    xorg.xrandr

   # Window Manager Packages
    # Brightness
    brightnessctl
    # Cursor
    catppuccin-cursors.mochaLight
    # Wallpaper
    hyprpaper
    # File manager
    kdePackages.dolphin
    yazi
    # Application launcher
    fuzzel
    # Image/Video viwer
    ffmpeg
    mpv
    tiv
    feh
    kdePackages.gwenview
    # PDF viwer
    zathura 
    # Log in
    ly
    ];
}
