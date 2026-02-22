return {
	"saghen/blink.pairs",
	version = "*",
	dependencies = "saghen/blink.download",
	-- Load when creating or opening a file
	event = { "BufNewFile", "BufReadPre" },

	--- @module 'blink.pairs'
	--- @type blink.pairs.Config
	opts = {
		mappings = {
			enabled = true,
			cmdline = true,
		},
	},
}
