return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,

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
                    surface0 = "#353e52",
                    surface1 = "#5b6173",
                    surface2 = "#4f5966",
                    text = "#b4bed1",
                    rosewater = "#c5ccd9",
                    lavender = "#c8d0e0",
                    red = "#e04a57",
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

                    subtext1 = "#acb8e3",
                    subtext0 = "#9faad6",
                    overlay2 = "#9da7d1",
                    overlay1 = "#7881b0",
                    overlay0 = "#636a91",

                    mantle = "#220b29",
                    base = "#01171c",
                    crust = "#2e0002",
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
        vim.cmd.colorscheme "catppuccin"
    end
}
