return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "black", "isort" },
      lua = { "stylua" },
      c = { "clang-format" },
      typst = { "typstyle" },
      nix = { "alejandra" },
    },
  },
  keys = { { "<leader>cf", function() require("conform").format() end, desc = "Format buffer" } },
}
