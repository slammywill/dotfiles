vim.opt.clipboard:append("unnamedplus")	-- Set clipboard to use system clipboard
vim.opt.hlsearch = false		        -- Don't use highlighting on search
vim.opt.expandtab = true		        -- Replace tabs with spaces
vim.opt.tabstop = 4			            -- Set tab length to 4 spaces
vim.opt.shiftwidth = 4			        -- Set indent length to 4 spaces
vim.opt.smartcase = true		        -- Ignore case on search unless search query contains capitals
vim.opt.nu = true			            -- Show current line number
vim.opt.rnu = true			            -- Use relative line numbers
vim.opt.scrolloff = 8			        -- Keep 8 lines above / below cursor when vertically scrolling
vim.opt.sidescrolloff = 8 		        -- Keep 8 characters left / right of cursor when horizontally scrolling
vim.g.mapleader = " "                   -- Set the leader key
vim.o.cursorline = true                 -- Highlight the line that the cursor is on
vim.cmd("filetype plugin on")


vim.cmd.colorscheme('gruvbox')
vim.lsp.enable({
    'lua_ls',
    'nil',
})
