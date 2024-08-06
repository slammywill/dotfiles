return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdater",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            highlight = { enable = false },
            indent = { enable = true },
        })
    end
}
