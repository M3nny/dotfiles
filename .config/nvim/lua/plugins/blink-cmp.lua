-- Autocompletion
return {
	"saghen/blink.cmp",

	-- Load when entering insert mode
	event = "InsertEnter",

	-- Use a release tag to download pre-built binaries
	version = "*",

	opts = {
		-- Key to be used to acceppt completion
		keymap = { preset = "super-tab" },

		appearance = {
			nerd_font_variant = "mono", -- adjusts spacing to ensure icons are aligned
		},

		-- Only show the documentation popup when manually triggered
		completion = { documentation = { auto_show = false } },

		-- Show function signature when filling with arguments
		signature = { enabled = true },

		-- Default list of enabled providers
		sources = {
			default = { "lsp", "path", "buffer" },
		},

		-- Rust fuzzy matcher for typo resistance and significantly better performance
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},

	-- Extend the default options
	opts_extend = { "sources.default" },
}
