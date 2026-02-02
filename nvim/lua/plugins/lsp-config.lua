return {
  {
    "mason-org/mason.nvim",
    opts = { ui = { icons = { package_installed = "✓", package_pending = "➜", package_uninstalled = "✗" } } },
    config = function()
      require'mason'.setup()
    end,
 },
 {
  "mason-org/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      -- https://mason-registry.dev/registry/list
      -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
      ensure_installed = { "lua_ls" },
    })
  end,
 },
 {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    vim.lsp.config("pyright", {})
    vim.lsp.enable({ "lua_ls", "tinymist" })
    -- :h vim.lsp.buf
    vim.keymap.set('n', 'W', vim.lsp.buf.hover, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  end
  },
}
