return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        require('lualine').setup({
            options = {
                theme = 'pywal',
                section_separators = { left = '', right = '' },
            }
        })
    end
}
