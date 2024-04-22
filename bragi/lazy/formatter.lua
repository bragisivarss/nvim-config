return {
    'mhartington/formatter.nvim',
    'prettier/vim-prettier',
    build = { 'yarn install --frozen-lockfile --production' },
    config = function()
        require('formatter').setup({
            logging = false,
            filetype = {
                javascript = {
                    -- prettierd
                    function()
                        return {
                            exe = "prettierd",
                            args = { vim.api.nvim_buf_get_name(0) },
                            stdin = true
                        }
                    end
                },
                -- other formatters ...
            }
        })
    end
}
