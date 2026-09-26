return {
  {
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
    opts = {},
    keys = {
      { "<leader>rr", "<cmd>CompilerOpen<cr>", desc = "Compile/run" },
      { "<leader>rt", "<cmd>CompilerToggleResults<cr>", desc = "Toggle results" },
    },
  },
  {
    "stevearc/overseer.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = { direction = "bottom", min_height = 25, max_height = 25 },
    },
  },
}
