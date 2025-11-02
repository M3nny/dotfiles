-- Filesystem editor
return {
	"stevearc/oil.nvim",

	-- Load on specific keypress
	keys = "-",

	config = function()
		local oil = require("oil")
		oil.setup({
			keymaps = {
				["q"] = "actions.close", -- close oil
				["<CR>"] = "actions.select", -- enter in a directory
				["-"] = "actions.parent", -- go to parent directory
				["_"] = "actions.open_cwd", -- go to current directory
			},

			view_options = {
				show_hidden = true,
			},
		})

		-- Open oil
		vim.keymap.set("n", "-", function()
			oil.open()
		end, { desc = "Open oil file browser" })
	end,

	dependencies = "nvim-tree/nvim-web-devicons",
}
