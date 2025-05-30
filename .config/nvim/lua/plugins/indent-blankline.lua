-- indent guides
return {
	"lukas-reineke/indent-blankline.nvim",

	-- load when creating or opening a file
	event = { "BufNewFile", "BufReadPre" },

	main = "ibl",

	config = function()
		require("ibl").setup({
			scope = {
				enabled = true,
				show_start = false,
				show_end = false,
			},

			indent = {
				char = "│",
				tab_char = "│",
				smart_indent_cap = true,
			},

			whitespace = {
				remove_blankline_trail = true,
			},
		})
	end,
}
