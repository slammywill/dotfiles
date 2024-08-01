return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux",
  },
  vim.keymap.set('n', '<leader>tn', ':TestNearest --stacktrace<CR>'),
  vim.keymap.set('n', '<leader>tf', ':TestFile --stacktrace<CR>'),
  vim.keymap.set('n', '<leader>ts', ':TestSuite --stacktrace<CR>'),
  vim.keymap.set('n', '<leader>tl', ':TestLast --stacktrace<CR>'),
  vim.keymap.set('n', '<leader>tv', ':TestVisit --stacktrace<CR>'),
  vim.cmd("let test#strategy = 'vimux'"),
}

