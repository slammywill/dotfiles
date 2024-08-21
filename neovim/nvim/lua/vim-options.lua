vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")

vim.opt.swapfile = false
vim.g.mapleader = " "

vim.o.cursorline = true
vim.o.termguicolors = true
vim.wo.number = true

vim.cmd("set nu")
vim.cmd("set rnu")
vim.cmd("set ma")

vim.cmd("set clipboard+=unnamedplus")

vim.diagnostic.config({
	virtual_text = false, -- Disable inline diagnostics
	signs = true, -- Keep signs in the gutter
	underline = true, -- Keep underlining the text
	update_in_insert = false, -- Don't show diagnostics in insert mode
	severity_sort = true, -- Sort diagnostics by severity
})

