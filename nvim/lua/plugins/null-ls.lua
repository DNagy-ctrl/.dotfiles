return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
--    null_ls.setup({
--      debug = true,
--    })
    null_ls.setup({
      source = { 
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.typstyle,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
--        null_ls.builtins.completion.spell,
--        null_ls.builtins.formatting.,
--        null_ls.builtins.diagnostics.,
      },
    })
    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end,
}

  
