return {
    { -- Theme
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                no_italic = true, -- Force no italic
            })
            vim.o.termguicolors = true
            vim.cmd.colorscheme "catppuccin"
        end,
    },
}
