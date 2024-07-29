return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
    config = function()
        require("gruvbox").setup({
            terminal_colors = true,
            transparent_mode = true,
            contrast = "soft",
        })
        vim.o.backgroud = dark
        vim.cmd([[colorscheme gruvbox]])
    end,
}
