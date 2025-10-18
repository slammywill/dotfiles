
-- Add a command to open lazy git in a custom terminal
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua lazygit_toggle()<CR>", {noremap = true, silent = true, desc = "Open lazygit"})


local harpoon = require("harpoon")
harpoon:setup()
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "View harpoon buffers" })

vim.keymap.set("n", "<leader>h", function() harpoon:list():select(1) end, { desc = "Select file 1 (harpoon)" })
vim.keymap.set("n", "<leader>j", function() harpoon:list():select(2) end, { desc = "Select file 2 (harpoon)" })
vim.keymap.set("n", "<leader>k", function() harpoon:list():select(3) end, { desc = "Select file 3 (harpoon)" })
vim.keymap.set("n", "<leader>l", function() harpoon:list():select(4) end, { desc = "Select file 4 (harpoon)" })

vim.keymap.set("n", "<leader>H", function() harpoon:list():replace_at(1) end, { desc = "Replace file 1 (harpoon) with current buffer" })
vim.keymap.set("n", "<leader>J", function() harpoon:list():replace_at(2) end, { desc = "Replace file 2 (harpoon) with current buffer" })
vim.keymap.set("n", "<leader>K", function() harpoon:list():replace_at(3) end, { desc = "Replace file 3 (harpoon) with current buffer" })
vim.keymap.set("n", "<leader>L", function() harpoon:list():replace_at(4) end, { desc = "Replace file 4 (harpoon) with current buffer" })
