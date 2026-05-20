{ pkgs, config, ... }:
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
    ripgrep
  ];
}
