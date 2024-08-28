
vim.opt.swapfile = false
vim.g.mapleader = " "

vim.o.cursorline = true
vim.o.termguicolors = true
vim.wo.number = true

vim.cmd("set nu") -- Use line numbers
vim.cmd("set rnu") -- Use relative numbers
vim.cmd("set ma") -- Set state to modifiable
vim.cmd("set clipboard+=unnamedplus") -- Set clipboard to use system clipboard
vim.cmd("set nohlsearch") -- Don't use highlighting on search
vim.cmd("set expandtab") -- Replace tabs with spaces
vim.cmd("set tabstop=4") -- Set tab length to 4 spaces
vim.cmd("set shiftwidth=4") -- Set indent length to 4 spaces

vim.diagnostic.config({
	virtual_text = false, -- Disable inline diagnostics -- Replace tabs with spaces
	signs = true, -- Keep signs in the gutter
	underline = true, -- Keep underlining the text
	update_in_insert = false, -- Don't show diagnostics in insert mode
	severity_sort = true, -- Sort diagnostics by severity
})

