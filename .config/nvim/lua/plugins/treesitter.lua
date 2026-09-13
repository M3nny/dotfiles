-- Highlight, edit, and navigate code
return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		local languages = {
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
			"toml",
			"terraform",
		}

		require("nvim-treesitter").setup()
		require("nvim-treesitter").install(languages)

		-- Start Treesitter for filetypes with an installed parser.
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				local ok = pcall(vim.treesitter.start)
				if ok and vim.bo.filetype ~= "python" then
					vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end
			end,
		})
	end,
}
