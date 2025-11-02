-- Fuzzy finder
return {
	{
		"nvim-telescope/telescope.nvim",

		branch = "0.1.x",

		config = function()
			require("telescope").setup({
				defaults = {
					mappings = {
						i = {
							["<C-u>"] = false,
							["<C-d>"] = false,
						},
					},
				},
			})

			-- Enable telescope fzf native, if installed
			require("telescope").load_extension("fzf")

			-- Find recently opened files
			vim.keymap.set(
				"n",
				"<leader>?",
				require("telescope.builtin").oldfiles,
				{ desc = "[?] Find recently opened files" }
			)

			-- Find existing buffers
			vim.keymap.set(
				"n",
				"<leader><space>",
				require("telescope.builtin").buffers,
				{ desc = "[ ] Find existing buffers" }
			)

			-- Fuzzily search in current buffer
			vim.keymap.set("n", "<leader>/", function()
				require("telescope.builtin").current_buffer_fuzzy_find(
					require("telescope.themes").get_dropdown({ winblend = 10, previewer = false })
				)
			end, { desc = "[/] Fuzzily search in current buffer]" })

			-- Find files
			vim.keymap.set("n", "<leader>f", require("telescope.builtin").find_files, { desc = "[F]ind [F]iles" })

			-- Search diagnostics
			vim.keymap.set(
				"n",
				"<leader>sd",
				require("telescope.builtin").diagnostics,
				{ desc = "[S]earch [D]iagnostics" }
			)

			-- Find document symbols
			vim.keymap.set("n", "<leader>ss", function()
				require("telescope.builtin").lsp_document_symbols()
			end, { desc = "[S]earch [S]ymbols (Document)" })

			-- Grep globally
			vim.keymap.set("n", "<leader>gg", function()
				require("telescope.builtin").live_grep()
			end, { desc = "[G]rep [G]lobally" })

			-- Grep word under cursor
			vim.keymap.set("n", "<leader>gw", function()
				require("telescope.builtin").live_grep({ default_text = vim.fn.expand("<cword>") })
			end, { desc = "[G]rep [W]ord under cursor" })

			-- Find references for the word under your cursor
			vim.keymap.set("n", "<leader>gr", function()
				require("telescope.builtin").lsp_references()
			end, { desc = "[G]oto [R]eferences" })
		end,

		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
	},

	{
		-- Fuzzy finder algorithm which requires local dependencies to be built. only load if "make" is available
		"nvim-telescope/telescope-fzf-native.nvim",

		dependencies = "nvim-telescope/telescope.nvim",
		build = "make",
		cond = vim.fn.executable("make") == 1,
	},
}
