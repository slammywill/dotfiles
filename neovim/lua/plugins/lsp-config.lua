return {
{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"html",
					"clangd",
          "jdtls",
          "pyright",
          "cssls",
},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
        capabilities = capabilities,
      })
      lspconfig.jdtls.setup({
        capabilities = capabilities,
        cmd = { "jdtls" }, -- Replace with the path to your jdtls executable if necessary
        root_dir = lspconfig.util.root_pattern('pom.xml', 'build.gradle', '.project', 'settings.gradle') or vim.fn.getcwd(),
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      lspconfig.cssls.setup({
        capabilities = capabilities,
      })

      lspconfig.sonarlint = {
        default_config = {
          cmd = {
            "sonarlint-language-server",
            "-stdio",
            "-analyzers",
            vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarpython.jar"),
            vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarcfamily.jar"),
            vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjava.jar"),
          },
          root_dir = lspconfig.util.root_pattern('pom.xml', 'build.gradle', '.project', 'settings.gradle') or vim.fn.getcwd(),
          filetypes = { "python", "cpp", "java" },
          settings = {
            -- SonarLint settings if needed
          },
        },
      }

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
    handlers = {
      ["client/registerCapability"] = function(err, result, ctx, config)
        local registration = {
          registrations = { result },
				}
				return vim.lsp.handlers["client/registerCapability"](err, registration, ctx, config)
			end,
		},
	},
}
