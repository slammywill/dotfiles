-------------
-- OPTIONS --
-------------
vim.opt.clipboard:append("unnamedplus") -- Set clipboard to use system clipboard
vim.opt.hlsearch = false                -- Don't use highlighting on search
vim.opt.expandtab = true                -- Replace tabs with spaces
vim.opt.tabstop = 4                     -- Set tab length to 4 spaces
vim.opt.shiftwidth = 4                  -- Set indent length to 4 spaces
vim.opt.ignorecase = true               -- Ignore search case
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
vim.g["test#strategy"] = "vimux"        -- Set tests to use vimux to display results
vim.g.tmux_navigator_no_mappings = 1    -- Removes default tmux navigator bindings

--------------
-- KEYBINDS --
--------------
vim.keymap.set("n", "<C-n>", ":Neotree reveal float<CR>", { silent = true })          -- Reveal file tree
vim.keymap.set("n", "K", vim.lsp.buf.hover, { silent = true })                        -- Hover over keyword to get information
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true })                  -- Go to the definition of the hovered keyword
vim.keymap.set("n", "gc", vim.lsp.buf.code_action, { silent = true })                 -- Select from a list of code actions
vim.keymap.set("n", "ge", vim.diagnostic.open_float, { silent = true })               -- Popout of diagnostic information
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { silent = true })              -- Format the file using prettier
vim.keymap.set("n", "C-h", ":TmuxNavigatorLeft<CR>", { silent = true })               -- Navigate left to a tmux pane
vim.keymap.set("n", "C-j", ":TmuxNavigatorDown<CR>", { silent = true })               -- Navigate down to a tmux pane
vim.keymap.set("n", "C-k", ":TmuxNavigatorUp<CR>", { silent = true })                 -- Navigate up to a tmux pane
vim.keymap.set("n", "C-l", ":TmuxNavigatorRight<CR>", { silent = true })              -- Navigate up to a tmux pane
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { silent = true })     -- Search through and select files
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { silent = true })      -- Search for a text string in dir files
vim.keymap.set("n", "<leader>fr", ":Telescope buffers<CR>", { silent = true })        -- Search through and select a buffer
vim.keymap.set("n", "<leader>fm", ":Telescope marks<CR>", { silent = true })          -- Search through and select marks
vim.keymap.set("n", "<leader>tn", ":TestNearest --stacktrace<CR>", { silent = true }) -- Run the nearest test to the cursor
vim.keymap.set("n", "<leader>tf", ":TestFile --stacktrace<CR>", { silent = true })    -- Run tests for the current file
vim.keymap.set("n", "<leader>ts", ":TestSuite --stacktrace<CR>", { silent = true })   -- Run tests for the current test suite
vim.keymap.set("n", "<leader>tl", ":TestLast --stacktrace<CR>", { silent = true })    -- Rerun the last test
vim.keymap.set("n", "<leader>tv", ":TestVisit<CR>", { silent = true })                -- Visit the file of the last run tests
-- <C-\> To toggle floating terminal (Defined in toggleterm.lua)

-----------------
-- DIAGNOSTICS --
-----------------
vim.diagnostic.config({
    virtual_text = true,   -- Use inline diagnostics
    signs = true,          -- Use signs in the gutter
    underline = true,      -- Underline the text
    update_in_insert = false, -- Don't show diagnostics in insert mode
    severity_sort = true,  -- Sort diagnostics by severity
})

-----------
-- NOTES --
-----------
-- https://neovim.io/doc/user/quickref.html
