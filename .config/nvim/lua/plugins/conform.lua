-- Formatter
return {
	"stevearc/conform.nvim",

	-- Load on specific keypress
	keys = {
		{ "<leader>cf", mode = { "n" } },
	},

	config = function()
		require("conform").setup({

			formatters_by_ft = {
				c = { "clang-format" },
				cpp = { "clang-format" },
				rust = { "rustfmt" },
				lua = { "stylua" },
				typescript = { "prettier" },
				python = { "ruff" },
				terraform = { "terraform_fmt" },
			},

			format_on_save = nil,
		})

		vim.keymap.set("n", "<leader>cf", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, { desc = "Format file" })
	end,
}
