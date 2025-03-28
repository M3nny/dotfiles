-- autocompletion
return {
	"saghen/blink.cmp",

	-- load when entering insert mode
	event = "InsertEnter",

	-- use a release tag to download pre-built binaries
	version = "*",

	opts = {
		-- key to be used to acceppt completion
		keymap = { preset = "super-tab" },

		appearance = {
			nerd_font_variant = "mono", -- adjusts spacing to ensure icons are aligned
		},

		-- only show the documentation popup when manually triggered
		completion = { documentation = { auto_show = false } },

		-- show function signature when filling with arguments
		signature = { enabled = true },

		-- default list of enabled providers
		sources = {
			default = { "lsp", "path", "buffer" },
		},

		-- rust fuzzy matcher for typo resistance and significantly better performance
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},

	-- extend the default options
	opts_extend = { "sources.default" },
}
