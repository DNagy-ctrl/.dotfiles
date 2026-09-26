return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  main = "nvim-treesitter.configs",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "c", "haskell", "python", "typst", "html", "css", "javascript", "lua", "nix" },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
