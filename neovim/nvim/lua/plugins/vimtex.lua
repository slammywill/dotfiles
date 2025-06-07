return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- PDF viewer
    vim.g.vimtex_view_method = "zathura"

    -- Use latexmk and move aux files to build/
    vim.g.vimtex_compiler_latexmk = {
      out_dir = "build",
      options = {
        "-pdf",
        "-interaction=nonstopmode",
        "-synctex=1",
      },
    }

    -- Optional: autoread external file changes
    vim.opt.autoread = true
    vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
      pattern = "*",
      command = "checktime"
    })
  end
}
