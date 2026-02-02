return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'nix', 'lua', 'python', 'typst' },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
      -- disable = { 'python' },
    },
  },
}

