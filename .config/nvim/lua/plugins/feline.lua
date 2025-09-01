-- statusbar
return {
	"feline-nvim/feline.nvim",

	config = function()
		-- set feline as statusline with catppuccin theme
		local ctp_feline = require("catppuccin.groups.integrations.feline")
		ctp_feline.setup()
		require("feline").setup({
			components = ctp_feline.get_statusline(),
		})
		vim.cmd("set noshowmode")
	end,
}
