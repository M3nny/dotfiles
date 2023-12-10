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
                leap = true,
                indent_blankline = {
                    enabled = true,
                    colored_indent_levels = false,
                },
            })
            vim.o.termguicolors = true
            vim.cmd.colorscheme "catppuccin"
        end,
    },
}
