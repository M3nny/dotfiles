-- fuzzy finder
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

			-- enable telescope fzf native, if installed
			require("telescope").load_extension("fzf")

			-- find recently opened files
			vim.keymap.set(
				"n",
				"<leader>?",
				require("telescope.builtin").oldfiles,
				{ desc = "[?] Find recently opened files" }
			)

			-- find existing buffers
			vim.keymap.set(
				"n",
				"<leader><space>",
				require("telescope.builtin").buffers,
				{ desc = "[ ] Find existing buffers" }
			)

			-- fuzzily search in current buffer
			vim.keymap.set("n", "<leader>/", function()
				require("telescope.builtin").current_buffer_fuzzy_find(
					require("telescope.themes").get_dropdown({ winblend = 10, previewer = false })
				)
			end, { desc = "[/] Fuzzily search in current buffer]" })

			-- find files
			vim.keymap.set("n", "<leader>f", require("telescope.builtin").find_files, { desc = "[F]ind [F]iles" })

			-- search diagnostics
			vim.keymap.set(
				"n",
				"<leader>sd",
				require("telescope.builtin").diagnostics,
				{ desc = "[S]earch [D]iagnostics" }
			)

			-- grep globally
			vim.keymap.set("n", "<leader>gg", function()
				require("telescope.builtin").live_grep()
			end, { desc = "[G]rep [G]lobally" })

			-- grep word under cursor
			vim.keymap.set("n", "<leader>gw", function()
				require("telescope.builtin").live_grep({ default_text = vim.fn.expand("<cword>") })
			end, { desc = "[G]rep [W]ord under cursor" })
		end,

		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
	},

	{
		-- fuzzy finder algorithm which requires local dependencies to be built. only load if "make" is available
		"nvim-telescope/telescope-fzf-native.nvim",

		dependencies = "nvim-telescope/telescope.nvim",
		build = "make",
		cond = vim.fn.executable("make") == 1,
	},
}
