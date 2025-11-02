-- LSP configuration & plugins
return {
	{
		-- Provides a sane config for each installed lsp
		"neovim/nvim-lspconfig",

		-- Load when creating or opening a file
		event = { "BufNewFile", "BufReadPre" },
	},

	{
		-- Automatically install lsp(s) to stdpath for neovim
		"mason-org/mason.nvim",

		-- Load when mason is called
		cmd = "Mason",

		config = function()
			-- Setup mason so it can manage external tooling
			require("mason").setup()

			-- Initialize mason-lspconfig
			require("mason-lspconfig").setup()

			-- Global lsp config
			vim.lsp.config("*", {
				capabilities = capabilities,
				on_attach = on_attach,
			})
		end,
	},

	{
		-- Integrate mason with nvim-lspconfig
		"williamboman/mason-lspconfig.nvim",

		-- Load when creating or opening a file
		event = { "BufNewFile", "BufReadPre" },

		dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
	},
}
