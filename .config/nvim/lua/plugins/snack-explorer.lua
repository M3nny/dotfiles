-- File explorer
return {
	"folke/snacks.nvim",
	opts = {
		explorer = { enabled = true },
	},
	keys = {
		{
			"<leader>e",
			function()
				require("snacks").explorer.open()
			end,
			desc = "[E]xplorer",
		},
	},
}
