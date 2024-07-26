return {
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  terminal_colors = true,
  priority = 1000,
  config = function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("gruvbox")
  end,
}
