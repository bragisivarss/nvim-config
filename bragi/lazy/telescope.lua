return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
        vim.keymap.set('n', '<C-f>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>ls', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>ws', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>ows', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word})
        end)
        vim.keymap.set('n', '<leader>oWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word})
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}
