return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config("lua_ls", {
      settings = { Lua = { diagnostics = { globals = { "vim" } } } },
    })

    vim.lsp.enable({
      "lua_ls", "nil_ls", "basedpyright", "ruff", "tinymist",
      "html", "cssls", "ts_ls", "clangd",
    })

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client and client:supports_method("textDocument/completion") then
          vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
      end,
    })

    vim.diagnostic.config({ virtual_text = true })
  end,
}
