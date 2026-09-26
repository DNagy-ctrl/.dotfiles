local map = vim.keymap.set
map("n", "<Esc>", "<cmd>nohlsearch<cr>")
--map("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format buffer" })  -- replaced in lua/plugins/conform.lua
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Line diagnostics" })
vim.keymap.set("n", "<leader>rh", "<cmd>!runghc %<cr>", { desc = "Run Haskell file" })
vim.keymap.set("n", "<leader>rc", "<cmd>!clang -std=c11 -Wall -o /tmp/%:t:r % && /tmp/%:t:r<cr>", { desc = "Run C file" })
