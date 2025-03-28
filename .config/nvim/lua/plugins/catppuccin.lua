-- theme
return {
	"catppuccin/nvim",

	name = "catppuccin",
	lazy = false,
	priority = 1000,

	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			no_italic = true, -- force no italic
			blink = true,
			leap = true,
			indent_blankline = {
				enabled = true,
				colored_indent_levels = false,
			},
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
