return {
    {
        "morhetz/gruvbox",
        priority = 9999,
        config = function()
            vim.api.nvim_set_var('gruvbox_contrast_dark', "hard")       -- Contrast
            vim.api.nvim_set_var('gruvbox_number_column', "dark0_soft") -- Contrast
            --vim.cmd("colorscheme gruvbox")
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1,

        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                background = {     -- :h background
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = true, -- disables setting the background color.
                show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
                term_colors = true,             -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = true,             -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15,          -- percentage of the shade to apply to the inactive window
                },
                no_italic = false,              -- Force no italic
                no_bold = false,                -- Force no bold
                no_underline = false,           -- Force no underline
                styles = {                      -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = { "italic" },    -- Change the style of comments
                    conditionals = { "italic" },
                    loops = {},
                    functions = { "italic" },
                    keywords = { "italic" },
                    strings = {},
                    variables = { "italic" },
                    numbers = {},
                    booleans = { "italic" },
                    properties = {},
                    types = {},
                    operators = {},
                    miscs = {}, -- Uncomment to turn off hard-coded styles
                },
                color_overrides = {
                    mocha = {
                        -- this 16 colors are changed to onedark
                        surface0 = "#621d4b",
                        surface1 = "#8a3088",
                        surface2 = "#792c80",
                        text = "#f6c1f8",
                        rosewater = "#c5ccd9",
                        red = "#d9309b",
                        peach = "#e0954f",
                        yellow = "#ebbf6e",
                        green = "#82ba59",
                        teal = "#32bccf",
                        blue = "#f8aadb",
                        mauve = "#bf60db",
                        flamingo = "#b83b30",

                        -- now patching extra palettes
                        maroon = "#e06c75",
                        --overlay0 = "#c6cce3",

                        -- extra colors not decided what to do
                        pink = "#F5C2E7",
                        sapphire = "#74C7EC",

                        subtext1 = "#f9ceff",
                        subtext0 = "#fb93d4",
                        overlay1 = "#ac68ae",
                        overlay0 = "#688e9b",
                        overlay2 = "#c99d74",

                        crust = "#c97176",
                        mantle = "#271d00",
                        lavender = "#f7b3f9",
                        base = "#170000",

                    },
                },
                        --surface1 = "#514b70",
                custom_highlights = {},
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    harpoon = true,
                    require("fidget").setup {
                        notification = {
                            window = {
                                winblend = 0,
                            },
                        }
                        -- ... the rest of your fidget config
                    },
                    mason = true,
                    native_lsp = {
                        enabled = true,
                        virtual_text = {
                            errors = { "italic" },
                            hints = { "italic" },
                            warnings = { "italic" },
                            information = { "italic" },
                        },
                        underlines = {
                            errors = { "underline" },
                        },
                        inlay_hints = {
                            background = true,
                        },
                    },
                    telescope = {
                        enabled = true,
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })

            -- setup must be called before loading
            vim.cmd.colorscheme "catppuccin"
        end
    },
    {
        'kepano/flexoki-neovim',
        name = 'flexoki',
    }
}
