return {
    {
        'lukas-reineke/indent-blankline.nvim', -- Add indentation guides even on blank lines
        config = function()
            require("indent_blankline").setup {
                space_char_blankline = " ",
                show_current_context = true,
                show_current_context_start = true,
            }
            indent_blankline = {
                enabled = true,
                colored_indent_levels = false,
            }
        end
    },
}
