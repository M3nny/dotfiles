-- Highlight, edit, and navigate code
return {
	"nvim-treesitter/nvim-treesitter",

	-- Load when creating or opening a file
	event = { "BufNewFile", "BufReadPre" },

	opts = {
		-- Add languages to be installed here that you want installed for treesitter
		ensure_installed = {
			"vim",
			"vimdoc",
			"lua",
			"c",
			"cpp",
			"rust",
			"python",
			"javascript",
			"typescript",
			"html",
			"css",
			"just",
			"json",
		},
		highlight = { enable = true },
		indent = { enable = true, disable = { "python" } },
	},

	config = function(_, opts)
		-- Setup Treesitter
		require("nvim-treesitter.configs").setup(opts)

		-- Start Treesitter automatically for buffers that have a parser installed
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				local buf = vim.api.nvim_get_current_buf()
				local ft = vim.bo[buf].filetype

				-- Only start Treesitter if a parser exists for this filetype
				if require("nvim-treesitter.parsers").has_parser(ft) then
					if not vim.treesitter.highlighter.active[buf] then
						vim.treesitter.start(buf)
					end
				end
			end,
		})
	end,
}
