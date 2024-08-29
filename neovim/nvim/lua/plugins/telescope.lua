return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = {
                        "build",
                        "bin",
                        "storage",
                        "node_modules",
                    },
                },
                extensions = {},
            })
        end,
    },
}
