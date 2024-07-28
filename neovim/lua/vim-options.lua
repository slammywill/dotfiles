vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")

vim.opt.swapfile = false
vim.g.mapleader = " "

vim.o.cursorline = true
vim.o.termguicolors = true
vim.wo.number = true

-- Navigate vim panes better --
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.cmd("set nu")
vim.cmd("set rnu")
vim.cmd("set ma")

