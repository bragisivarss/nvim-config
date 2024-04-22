return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
    require("trouble").setup({
        icons = false,
    })

    vim.keymap.set("n", "<leader>tt", function()
        require("trouble").toggle()
    end)
    vim.keymap.set("n", "<leader>tn", function()
        require("trouble").next()
    end)
        vim.keymap.set("n", "<leader>tn", function()
        require("trouble").next()
    end)
    end
}

