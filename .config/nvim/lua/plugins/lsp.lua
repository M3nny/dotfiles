-- lsp configuration & plugins
return {
	{
		-- provides a sane config for each installed lsp
		"neovim/nvim-lspconfig",

		-- load when creating or opening a file
		event = { "BufNewFile", "BufReadPre" },
	},

	{
		-- automatically install lsp(s) to stdpath for neovim
		"mason-org/mason.nvim",

		-- load when mason is called
		cmd = "Mason",
	},

	{
		-- integrate mason with nvim-lspconfig
		"williamboman/mason-lspconfig.nvim",

		-- load when creating or opening a file
		event = { "BufNewFile", "BufReadPre" },

		dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
	},
}
