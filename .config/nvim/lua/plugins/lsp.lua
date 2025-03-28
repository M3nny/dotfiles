-- lsp configuration & plugins
return {
	{
		-- provides a sane config for each installed lsp
		"neovim/nvim-lspconfig",

		-- load on file open
		event = "BufRead",
	},

	{
		-- automatically install lsp(s) to stdpath for neovim
		"williamboman/mason.nvim",

		-- load when mason is called
		cmd = "Mason",

		config = function()
			-- setup mason so it can manage external tooling
			require("mason").setup()

			-- load mason-lspconfig, which bridges mason and nvim-lspconfig
			local mason_lspconfig = require("mason-lspconfig")

			-- ensure specified lsp servers are installed
			mason_lspconfig.setup({
				ensure_installed = { "clangd" },
			})

			-- set up handlers to configure each installed lsp server
			mason_lspconfig.setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
						on_attach = on_attach,
					})
				end,
			})
		end,
	},

	{
		-- integrate mason with nvim-lspconfig
		"williamboman/mason-lspconfig.nvim",

		-- load on file open
		event = "BufRead",

		dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
	},
}
