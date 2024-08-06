return {
	"neanias/everforest-nvim",
  lazy = false,
  priority= 1000,
	config = function()
		require("everforest").setup({
			background = "soft",
			transparent_background_level = 0,
		})
		vim.cmd([[colorscheme everforest]])
	end,
}
