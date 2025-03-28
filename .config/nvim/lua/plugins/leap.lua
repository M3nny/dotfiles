-- leap from a word to another
return {
	"ggandor/leap.nvim",

	-- load on specific keypress
	keys = {
		{ "s", mode = { "n", "v" } }, -- 's' in normal (n) and visual (x) mode
		{ "S", mode = { "n", "v" } }, -- 'S' in normal and visual mode
	},

	config = function()
		require("leap").add_default_mappings()
	end,
}
