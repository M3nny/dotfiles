-- highlight, edit, and navigate code
return {
	"nvim-treesitter/nvim-treesitter",

	build = function()
		pcall(require("nvim-treesitter.install").update({ with_sync = true }))
	end,

	config = function()
		require("nvim-treesitter.configs").setup({
			-- add languages to be installed here that you want installed for treesitter
			ensure_installed = {
				"vim",
				"vimdoc",
				"lua",
				"c",
				"cpp",
				"rust",
				"java",
				"python",
				"javascript",
				"typescript",
			},
			highlight = { enable = true },
			indent = { enable = true, disable = { "python" } },
		})
	end,

	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
}
