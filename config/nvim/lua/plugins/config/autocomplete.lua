require('blink.cmp').setup({
    keymap = {
        preset = 'default',

        ['<Tab>'] = {
            'select_and_accept',
            'select_next',
            'fallback',
        },

        ['<C-j>'] = {
            'select_next'
        },

        ['<C-k>'] = {
            'select_prev'
        },
    },
})
