vim.lsp.enable({
    'lua_ls',
    'nil_ls',
    'rust_analyzer'
})

vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
                checkThirdParty = false,
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

vim.lsp.config('nil_ls', {})
vim.lsp.config('rust_analyzer', {})
