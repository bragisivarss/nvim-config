return {
    {
        "morhetz/gruvbox",
        priority = 9999,
        config = function()
            vim.api.nvim_set_var('gruvbox_contrast_dark', "hard")     -- Contrast
            vim.api.nvim_set_var('gruvbox_number_column', "dark0_soft")     -- Contrast
            vim.cmd("colorscheme gruvbox")
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
                transparent_background = false, -- disables setting the background color.
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
                    -- miscs = {}, -- Uncomment to turn off hard-coded styles
                },
                color_overrides = {
                    mocha = {
                        -- this 16 colors are changed to onedark
                        surface0 = "#42133d",
                        surface1 = "#514b70",
                        surface2 = "#30274f",
                        text = "#bbcded",
                        rosewater = "#c5ccd9",
                        lavender = "#c8d0e0",
                        red = "#d9309b",
                        peach = "#e0954f",
                        yellow = "#ebbf6e",
                        green = "#82ba59",
                        teal = "#32bccf",
                        blue = "#379bed",
                        mauve = "#bf60db",
                        flamingo = "#b83b30",

                        -- now patching extra palettes
                        maroon = "#e06c75",
                        sky = "#d19a66",

                        -- extra colors not decided what to do
                        pink = "#F5C2E7",
                        sapphire = "#74C7EC",

                        subtext1 = "#9fb2f5",
                        subtext0 = "#8a9ce3",
                        overlay2 = "#8d9bd6",
                        overlay1 = "#626da3",
                        overlay0 = "#424d8a",

                        mantle = "#19001a",
                        base = "#0c0017",
                        crust = "#701f23",
                    },
                },
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
            --vim.cmd.colorscheme "catppuccin"
        end
    },
    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     priority = 1000,
    --     config = function()
    --         require("gruvbox").setup({
    --             palette_overrides = {
    --                 --  bg0 = "#362c20",
    --                 --  bg1 = "#262321",
    --                 --  bg2 = "#403834",
    --                 --  bg3 = "#42372e",
    --                 --  bg4 = "#615347",
    --                 --  fg0 = "#fff7d6",
    --                 --  fg1 = "#f7e9c3",
    --                 --  fg2 = "#e0d1b1",
    --                 --  fg3 = "#ccbda1",
    --                 --  fg4 = "#f52aa7",
    --                 --  --fg4 = "#c7b295",
    --                 --  bright_green = "#b2c73e",
    --                 --  bright_red = "#ff4567",
    --                 --  neutral_red = "#ff4567",
    --                 --  bright_orange = "#e88d2c",
    --                 --  red = "#960f2f",
    --                 --  blue = "#58b8ae",
    --             }
    --         })
    --         vim.o.background = "dark" -- or "light" for light mode
    --         vim.cmd([[colorscheme gruvbox]])
    --     end
    -- }
}
