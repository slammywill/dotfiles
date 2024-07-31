return {
    "neanias/everforest-nvim",
    config = function()
        require('everforest').setup({
          background = "medium",
    })
        vim.cmd([[colorscheme everforest]])
    end,
}
