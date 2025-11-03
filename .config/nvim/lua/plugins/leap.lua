-- Leap from a word to another
return {
	"ggandor/leap.nvim",

	-- Load on specific keypress
	keys = {
		{ "s", mode = { "n", "v" } }, -- "s" in normal (n) and visual (v) mode
		{ "S", mode = { "n", "v" } }, -- "S" in normal (n) and visual (v) mode
	},

	config = function()
		local leap = require("leap")
		vim.keymap.set({ "n", "v" }, "s", "<Plug>(leap-forward)", { desc = "Search after cursor" })
		vim.keymap.set({ "n", "v" }, "S", "<Plug>(leap-backward)", { desc = "Search before cursor" })
	end,
}
