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
			auto_integrations = true,
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
