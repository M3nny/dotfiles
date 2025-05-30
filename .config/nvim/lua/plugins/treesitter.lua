-- highlight, edit, and navigate code
return {
	"nvim-treesitter/nvim-treesitter",

	-- load when creating or opening a file
	event = { "BufNewFile", "BufReadPre" },

	opts = {
		-- add languages to be installed here that you want installed for treesitter
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
}
