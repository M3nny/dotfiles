return {
    {
        "lukas-reineke/indent-blankline.nvim", -- Add indentation guides even on blank lines
        commit = "9637670",
        config = function()
            require("indent_blankline").setup {
                space_char_blankline = " ",
                show_current_context = true,
                show_current_context_start = false,
            }
        end
    },
}
