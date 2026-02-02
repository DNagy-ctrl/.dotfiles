return { 
  'chomosuke/typst-preview.nvim', 
  lazy = false,
  version = "1.*",
  opts = {},
  config = function()
    vim.keymap.set( "n", "<leader>t", ":TypstPreview<CR>", {})
  end,
}

