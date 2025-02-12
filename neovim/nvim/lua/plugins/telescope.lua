return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
            "jvgrootveld/telescope-zoxide",
            "nvim-telescope/telescope-frecency.nvim",
		},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
            local telescope = require("telescope")
            local telescopeConfig = require("telescope.config")
            local vimgrep_arguments = { table.unpack(telescopeConfig.values.vimgrep_arguments) }

            table.insert(vimgrep_arguments, "--hidden")
            -- Don't search in .git directory
            table.insert(vimgrep_arguments, "--glob")
            table.insert(vimgrep_arguments, "!**/.git/*")


			telescope.setup({
				defaults = {
                    vimgrep_arguments = vimgrep_arguments,
					file_ignore_patterns = {
						"build",
						"bin",
						"storage",
						"node_modules",
					},
				},
                pickers = {
                    find_files = {
                        find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
                    }
                },
				extensions = {
					zoxide = {},
					frecency = {},
				},
			})
			require("telescope").load_extension("zoxide")
			require("telescope").load_extension("frecency")
		end,
	},
}
