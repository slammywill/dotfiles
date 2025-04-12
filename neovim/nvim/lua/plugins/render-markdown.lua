return {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {},
    config = function()
        local config = require("render-markdown")
        config.setup({
            heading = {
                backgrounds = {
                },
            },
        })
    end,
}
