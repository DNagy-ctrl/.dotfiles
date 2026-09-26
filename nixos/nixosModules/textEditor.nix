{
  pkgs,
  config,
  ...
}: {
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Text editor
    neovim
    vim

    # For nvim
    ripgrep
    fd
    wl-clipboard
    ghc

    # language servers
    lua-language-server
    stylua # Lua
    nil
    alejandra # Nix
    basedpyright
    ruff # Python
    tinymist # Typst
    vscode-langservers-extracted # HTML, CSS
    typescript-language-server # JavaScript/Typst
    haskell-language-server
    clang-tools # C

    # Preview tooling
    websocat # Typst
    imagemagick # Image
  ];
}
