return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
        require("dashboard").setup({
            theme = "hyper",
            config = {
                week_header = {
                    enable = true,
                },
                shortcut = {
                    { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
                    {
                        desc = " Files",
                        group = "Label",
                        action = "Telescope frecency",
                        key = "f",
                    },
                    {
                        desc = " Zoxide",
                        group = "DiagnosticHint",
                        action = "Telescope zoxide list",
                        key = "z",
                    },
                    {
                        desc = " git",
                        group = "Number",
                        action = "lua _lazygit_toggle()",
                        key = "g",
                    },
                },
            },
        })
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
