-- File picker
return {
	opts = {
		picker = {
			enabled = true,
			ui_select = true,
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				Snacks.picker.recent()
			end,
			desc = "[?] Find recently opened files",
		},
		{
			"<leader><space>",
			function()
				Snacks.picker.buffers()
			end,
			desc = "[ ] Find existing buffers",
		},
		{
			"<leader>/",
			function()
				Snacks.picker.lines()
			end,
			desc = "[/] Fuzzily search in current buffer",
		},
		{
			"<leader>f",
			function()
				Snacks.picker.files()
			end,
			desc = "[F]ind [F]iles",
		},
		{
			"<leader>sd",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "[S]earch [D]iagnostics",
		},
		{
			"<leader>ss",
			function()
				Snacks.picker.lsp_symbols()
			end,
			desc = "[S]earch [S]ymbols (Document)",
		},
		{
			"<leader>gg",
			function()
				Snacks.picker.grep()
			end,
			desc = "[G]rep [G]lobally",
		},
		{
			"<leader>gw",
			function()
				Snacks.picker.grep_word()
			end,
			desc = "[G]rep [W]ord under cursor",
		},
		{
			"<leader>gr",
			function()
				Snacks.picker.lsp_references()
			end,
			desc = "[G]oto [R]eferences",
		},
		{
			"<leader>gp",
			function()
				Snacks.picker.projects()
			end,
			desc = "[G]oto [P]rojects",
		},
	},
}
