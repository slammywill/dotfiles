return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
            "jvgrootveld/telescope-zoxide",
            "nvim-telescope/telescope-file-browser.nvim",
            "nvim-telescope/telescope-frecency.nvim",
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
				extensions = {
					zoxide = {},
					file_browser = {
						depth = 3,
						auto_depth = true,
					},
					frecency = {},
				},
			})
			require("telescope").load_extension("zoxide")
			require("telescope").load_extension("file_browser")
			require("telescope").load_extension("frecency")
		end,
	},
}
