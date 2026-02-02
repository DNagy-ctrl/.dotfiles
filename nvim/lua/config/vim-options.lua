vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.wo.relativenumber = true
vim.wo.number = true

--vim.opt.clipboard = "unnamedplus" -- uses system clipboard
--vim.opt.spelllang = "en_gb"

vim.diagnostic.config({
	virtual_text = true,
})

vim.opt.spell = true
