return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
            popup_border_style = "rounded",
            filesystem = {
                follow_current_file = {
                    enabled = true,
                },
                sync_root_with_cwd = true,
                bind_to_cwd = true,
                filtered_items = {
                    hide_dotfiles = false,
                    never_show = {
                        ".DS_Store",
                    },
                    hide_by_pattern = {
                        "*.dSYM",
                        ".bin/",
                    },
                },
            },
        })
    end,
}
