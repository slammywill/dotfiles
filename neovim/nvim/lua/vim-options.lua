--------------
-- OPTIONS --
--------------
vim.cmd("set nu") -- Use line numbers
vim.cmd("set rnu") -- Use relative numbers
vim.cmd("set ma") -- Set state to modifiable
vim.cmd("set clipboard+=unnamedplus") -- Set clipboard to use system clipboard
vim.cmd("set nohlsearch") -- Don't use highlighting on search
vim.cmd("set expandtab") -- Replace tabs with spaces
vim.cmd("set tabstop=4") -- Set tab length to 4 spaces
vim.cmd("set shiftwidth=4") -- Set indent length to 4 spaces
vim.cmd("let test#strategy = 'vimux'") -- Sets tests to use vimux to display results

vim.opt.swapfile = false
vim.g.mapleader = " "
vim.o.cursorline = true
vim.o.termguicolors = true
vim.wo.number = true

--------------
-- KEYBINDS --
--------------
vim.keymap.set("n", "<C-n>", ":Neotree reveal float<CR>", {}) -- Reveal file tree
vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- Hover over keyword to get information
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- Go to the definition of the hovered keyword
vim.keymap.set("n", "gc", vim.lsp.buf.code_action, {}) -- Select from a list of code actions
vim.keymap.set("n", "ge", vim.diagnostic.open_float, { silent = true }) -- Popout of diagnostic information
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}) -- Format the file using prettier
vim.keymap.set("n", "C-h", ":TmuxNavigatorLeft<CR>") -- Navigate left to a tmux pane
vim.keymap.set("n", "C-j", ":TmuxNavigatorDown<CR>") -- Navigate down to a tmux pane
vim.keymap.set("n", "C-k", ":TmuxNavigatorUp<CR>") -- Navigate up to a tmux pane
vim.keymap.set("n", "C-l", ":TmuxNavigatorRight<CR>") -- Navigate up to a tmux pane
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>") -- Search through and select files
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>") -- Search for a text string in dir files
vim.keymap.set("n", "<leader>fr", ":Telescope buffers<CR>") -- Search through and select a buffer
vim.keymap.set("n", "<leader>tn", ":TestNearest --stacktrace<CR>") -- Run the nearest test to the cursor
vim.keymap.set("n", "<leader>tf", ":TestFile --stacktrace<CR>") -- Runs tests for the current file
vim.keymap.set("n", "<leader>ts", ":TestSuite --stacktrace<CR>") -- Runs tests for the current test suite
vim.keymap.set("n", "<leader>tl", ":TestLast --stacktrace<CR>") -- Reruns the last test
vim.keymap.set("n", "<leader>tv", ":TestVisit --stacktrace<CR>") -- Visits the file of your last run tests

-----------------
-- DIAGNOSTICS --
-----------------
vim.diagnostic.config({
	virtual_text = false, -- Disable inline diagnostics
	signs = true, -- Keep signs in the gutter
	underline = true, -- Keep underlining the text
	update_in_insert = false, -- Don't show diagnostics in insert mode
	severity_sort = true, -- Sort diagnostics by severity
})
