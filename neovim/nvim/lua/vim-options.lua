
-------------
-- OPTIONS --
-------------
vim.opt.clipboard:append('unnamedplus') -- Set clipboard to use system clipboard
vim.opt.hlsearch = false                -- Don't use highlighting on search
vim.opt.expandtab = true                -- Replace tabs with spaces
vim.opt.tabstop = 4                     -- Set tab length to 4 spaces
vim.opt.shiftwidth = 4                  -- Set indent length to 4 spaces
vim.opt.smartcase = true                -- Ignore case on search unless search query contains capitals
vim.opt.nu = true                       -- Show current line number
vim.opt.rnu = true                      -- Use relative numbers
vim.opt.undofile = true                 -- Use persistent undo 
vim.opt.swapfile = false                -- Don't use temp files for open file changes
vim.g.mapleader = " "                   -- Set the leader key
vim.o.cursorline = true                 -- Highlight the line that the cursor is on
vim.o.termguicolors = true              -- Use true colors
vim.opt.scrolloff = 8                   -- Keep 8 lines above / below when vertically scolling
vim.opt.sidescrolloff = 8               -- Keep 8 columns left / right when horizontally scrolling
vim.g['test#strategy'] = 'vimux'        -- Set tests to use vimux to display results

--------------
-- KEYBINDS --
--------------
vim.keymap.set("n", "<C-n>", ":Neotree reveal float<CR>", {})           -- Reveal file tree
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})                         -- Hover over keyword to get information
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})                   -- Go to the definition of the hovered keyword
vim.keymap.set("n", "gc", vim.lsp.buf.code_action, {})                  -- Select from a list of code actions
vim.keymap.set("n", "ge", vim.diagnostic.open_float, { silent = true }) -- Popout of diagnostic information
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})               -- Format the file using prettier
vim.keymap.set("n", "C-h", ":TmuxNavigatorLeft<CR>")                    -- Navigate left to a tmux pane
vim.keymap.set("n", "C-j", ":TmuxNavigatorDown<CR>")                    -- Navigate down to a tmux pane
vim.keymap.set("n", "C-k", ":TmuxNavigatorUp<CR>")                      -- Navigate up to a tmux pane
vim.keymap.set("n", "C-l", ":TmuxNavigatorRight<CR>")                   -- Navigate up to a tmux pane
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")          -- Search through and select files
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")           -- Search for a text string in dir files
vim.keymap.set("n", "<leader>fr", ":Telescope buffers<CR>")             -- Search through and select a buffer
vim.keymap.set("n", "<leader>tn", ":TestNearest --stacktrace<CR>")      -- Run the nearest test to the cursor
vim.keymap.set("n", "<leader>tf", ":TestFile --stacktrace<CR>")         -- Run tests for the current file
vim.keymap.set("n", "<leader>ts", ":TestSuite --stacktrace<CR>")        -- Run tests for the current test suite
vim.keymap.set("n", "<leader>tl", ":TestLast --stacktrace<CR>")         -- Rerun the last test
vim.keymap.set("n", "<leader>tv", ":TestVisit<CR>")                     -- Visit the file of the last run tests

-----------------
-- DIAGNOSTICS --
-----------------
vim.diagnostic.config({
	virtual_text = true,        -- Use inline diagnostics
	signs = true,               -- Use signs in the gutter
	underline = true,           -- Underline the text
	update_in_insert = false,   -- Don't show diagnostics in insert mode
	severity_sort = true,       -- Sort diagnostics by severity
})

-----------
-- NOTES --
-----------
-- `0 goes to where vim was previously exited
-- https://neovim.io/doc/user/quickref.html
