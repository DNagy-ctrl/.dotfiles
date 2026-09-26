return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      custom_highlights = function(colors)
        return {
          CursorLine = { bg = colors.surface1 },
          CursorColumn = { bg = colors.surface1 },
          CursorLineNr = { fg = colors.text, bold = true },
        }
      end,
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
