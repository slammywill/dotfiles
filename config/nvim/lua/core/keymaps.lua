vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set("n", "gd", ":Telescope lsp_definitions<CR>", { silent = true, desc = "Go to definition" })
vim.keymap.set("n", "gs", vim.lsp.buf.code_action, { desc = "Show code actions" })
vim.keymap.set("n", "ge", vim.diagnostic.open_float, { desc = "Show diagnostics" })
vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>", { desc = "Show references" })
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { silent = true, desc = "format buffer" })

vim.keymap.set("n", "<leader>y", ":%yank<CR>", { desc = "Yank entire buffer" })
vim.keymap.set("n", "<leader>v", "ggVG", { desc = "Select entire buffer" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save buffer" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit buffer" })
vim.keymap.set("n", "<leader>s", ":e#<CR>", { silent = true, desc = "Go to last opened file" })

vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { silent = true, desc = "Find files" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { silent = true, desc = "Find pattern" })
vim.keymap.set("n", "<leader>fm", ":Telescope marks<CR>", { silent = true, desc = "Find marks" })

vim.keymap.set("n", "<C-n>", ":Neotree toggle float reveal<CR>", { silent = true, desc = "Show directory tree" })
