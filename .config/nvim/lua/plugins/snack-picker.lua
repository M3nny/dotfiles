-- File picker
return {
	"folke/snacks.nvim",
	opts = {
		picker = { enabled = true },
	},
	keys = {
		{
			"<leader>?",
			function()
				require("snacks").picker.recent()
			end,
			desc = "[?] Find recently opened files",
		},
		{
			"<leader><space>",
			function()
				require("snacks").picker.buffers()
			end,
			desc = "[ ] Find existing buffers",
		},
		{
			"<leader>/",
			function()
				require("snacks").picker.lines()
			end,
			desc = "[/] Fuzzily search in current buffer",
		},
		{
			"<leader>f",
			function()
				require("snacks").picker.files()
			end,
			desc = "[F]ind [F]iles",
		},
		{
			"<leader>sd",
			function()
				require("snacks").picker.diagnostics()
			end,
			desc = "[S]earch [D]iagnostics",
		},
		{
			"<leader>ss",
			function()
				require("snacks").picker.lsp_symbols()
			end,
			desc = "[S]earch [S]ymbols (Document)",
		},
		{
			"<leader>gg",
			function()
				require("snacks").picker.grep()
			end,
			desc = "[G]rep [G]lobally",
		},
		{
			"<leader>gw",
			function()
				require("snacks").picker.grep_word()
			end,
			desc = "[G]rep [W]ord under cursor",
		},
		{
			"<leader>gr",
			function()
				require("snacks").picker.lsp_references()
			end,
			desc = "[G]oto [R]eferences",
		},
	},
}
