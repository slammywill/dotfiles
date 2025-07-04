
-- OPTIONS --
-------------
vim.opt.clipboard:append("unnamedplus") -- Set clipboard to use system clipboard
vim.opt.hlsearch = false -- Don't use highlighting on search
vim.opt.expandtab = true -- Replace tabs with spaces
vim.opt.tabstop = 4 -- Set tab length to 4 spaces
vim.opt.shiftwidth = 4 -- Set indent length to 4 spaces
vim.opt.ignorecase = true -- Ignore search case
vim.opt.smartcase = true -- Ignore case on search unless search query contains capitals
vim.opt.nu = true -- Show current line number
vim.opt.rnu = true -- Use relative numbers
vim.opt.undofile = true -- Use persistent undo
vim.opt.swapfile = false -- Don't use temp files for open file changes
vim.g.mapleader = " " -- Set the leader key
vim.o.cursorline = true -- Highlight the line that the cursor is on
vim.o.termguicolors = true -- Use true colors
vim.opt.scrolloff = 8 -- Keep 8 lines above / below when vertically scolling
vim.opt.sidescrolloff = 8 -- Keep 8 columns left / right when horizontally scrolling
vim.g["test#strategy"] = "vimux" -- Set tests to use vimux to display results
vim.g.tmux_navigator_no_mappings = 1 -- Removes default tmux navigator bindings
vim.opt.compatible = false
vim.cmd('filetype plugin on')

--------------
-- KEYBINDS --
--------------
vim.keymap.set("n", "<C-n>", ":Neotree toggle float reveal<CR>", { silent = true, desc = "Show directory tree" })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set("n", "gd", ":Telescope lsp_definitions<CR>", { silent = true, desc = "Go to definition" })
vim.keymap.set("n", "gs", vim.lsp.buf.code_action, { desc = "Show code actions" })
vim.keymap.set("n", "ge", vim.diagnostic.open_float, { desc = "Show diagnostics" })
vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>", { desc = "Show references" })
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { silent = true, desc = "format buffer" })

vim.keymap.set("n", "<c-h>", ":TmuxNavigateLeft<CR>", { silent = true, desc = "Navigate left (tmux)" })
vim.keymap.set("n", "<c-j>", ":TmuxNavigateDown<CR>", { silent = true, desc = "Navigate down (tmux)" })
vim.keymap.set("n", "<c-k>", ":TmuxNavigateUp<CR>", { silent = true, desc = "Navigate up (tmux)" })
vim.keymap.set("n", "<c-l>", ":TmuxNavigateRight<CR>", { silent = true, desc = "Navigate right (tmux)" })

vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { silent = true, desc = "Find files" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { silent = true, desc = "Find pattern" })
vim.keymap.set("n", "<leader>fm", ":Telescope marks<CR>", { silent = true, desc = "Find marks" })
vim.keymap.set("n", "<leader>fr", ":Telescope frecency workspace=CWD<CR>", { silent = true, desc = "Find buffers" })
vim.keymap.set("n", "<leader>fz", ":Telescope zoxide list<CR>", { silent = true, desc = "Open zoxide picker" })
vim.keymap.set("n", "<leader>fc", ":Telescope neoclip<CR>", { silent = true, desc = "Open clipboard picker" })

vim.keymap.set("n", "<leader>tn", ":TestNearest --stacktrace<CR>", { desc = "Test nearest" })
vim.keymap.set("n", "<leader>tf", ":TestFile --stacktrace<CR>", { desc = "Test file" })
vim.keymap.set("n", "<leader>ts", ":TestSuite --stacktrace<CR>", { desc = "Test suite" })
vim.keymap.set("n", "<leader>tl", ":TestLast --stacktrace<CR>", { desc = "Test last" })
vim.keymap.set("n", "<leader>tv", ":TestVisit<CR>", { desc = "Visit test file " })

vim.keymap.set("n", "<leader>y", ":%yank<CR>", { desc = "Yank entire buffer" })
vim.keymap.set("n", "<leader>v", "ggVG", { desc = "Select entire buffer" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save buffer" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit buffer" })
vim.keymap.set("n", "<leader>s", ":e#<CR>", {silent = true, desc = "Go to last opened file"})
vim.keymap.set("n", "<c-\\>", "i") -- Insert mode when opening terminal

vim.keymap.set("n", "<leader>xl", ":VimtexCompile<CR>", { desc = "Vimtex compile" })

-----------------
-- DIAGNOSTICS --
-----------------
vim.diagnostic.config({
	virtual_text = true, -- Use inline diagnostics
	signs = true, -- Use signs in the gutter
	underline = true, -- Underline the text
	update_in_insert = false, -- Don't show diagnostics in insert mode
	severity_sort = true, -- Sort diagnostics by severity
})

-----------
-- OTHER --
-----------
vim.filetype.add({
    extension = {
        svelte = "svelte";
    }
})

-----------
-- NOTES --
-----------
-- https://neovim.io/doc/user/quickref.html
