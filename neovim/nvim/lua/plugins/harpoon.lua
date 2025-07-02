return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({})

        -- basic telescope configuration
        local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers")
                .new({}, {
                    prompt_title = "Harpoon",
                    finder = require("telescope.finders").new_table({
                        results = file_paths,
                    }),
                    previewer = conf.file_previewer({}),
                    sorter = conf.generic_sorter({}),
                })
                :find()
        end

        vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add file to harpoon" })

        vim.keymap.set("n", "<leader>j", function() harpoon:list():select(1) end, { desc = "Open file 1 in harpoon buffer" })
        vim.keymap.set("n", "<leader>k", function() harpoon:list():select(2) end, { desc = "Open file 2 in harpoon buffer" })
        vim.keymap.set("n", "<leader>l", function() harpoon:list():select(3) end, { desc = "Open file 3 in harpoon buffer" })
        vim.keymap.set("n", "<leader>;", function() harpoon:list():select(4) end, { desc = "Open file 4 in harpoon buffer" })

        vim.keymap.set("n", "<C-i>", function() harpoon:list():prev() end, { desc = "Go to previous buffer" })
        vim.keymap.set("n", "<C-o>", function() harpoon:list():next() end, { desc = "Go to next buffer" })
    end,
}
