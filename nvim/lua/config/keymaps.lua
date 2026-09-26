local map = vim.keymap.set
map("n", "<Esc>", "<cmd>nohlsearch<cr>")
--map("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format buffer" })  -- replaced in lua/plugins/conform.lua
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Line diagnostics" })
vim.keymap.set("n", "<leader>rh", "<cmd>!runghc %<cr>", { desc = "Run Haskell file" })
vim.keymap.set("n", "<leader>rc", function()
  vim.cmd("write")
  local file = vim.fn.expand("%")
  local out = "/tmp/" .. vim.fn.expand("%:t:r")
  vim.cmd("botright split")
  vim.cmd("resize 15")
  vim.cmd("terminal clang -std=c11 -Wall -o " .. out .. " " .. file .. " && " .. out)
  vim.cmd("startinsert")
end, { desc = "Run C file (interactive)" })
