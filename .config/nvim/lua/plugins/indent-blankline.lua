-- indent guides
return {
	"lukas-reineke/indent-blankline.nvim",

	-- load on file open
	event = "BufRead",

	main = "ibl",

	opts = {
		scope = {
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
	},
}
