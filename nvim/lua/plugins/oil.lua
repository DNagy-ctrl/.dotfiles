return {
  "stevearc/oil.nvim",
  opts = {
    keymaps = {
      ["<C-h>"] = false,
      ["<C-l>"] = false,
    },
  },
  keys = { { "-", "<cmd>Oil<cr>", desc = "Open parent directory" } },
}
