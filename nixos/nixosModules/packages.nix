{ pkgs, ... }:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Text editor
    #nvim
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
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
    # CLI tools
    tree
    # Fun CLI stuff
    cmatrix
    # Games
    prismlauncher
    # Rust
    cargo
  ];
}
