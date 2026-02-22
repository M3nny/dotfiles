-- Theme
return {
	"catppuccin/nvim",

	name = "catppuccin",
	lazy = false,
	priority = 1000,

	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			no_italic = true,
			leap = true,
			blink = true,
			blink_indent = true,
			blink_pairs = true,
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
