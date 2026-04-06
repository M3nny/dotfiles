-- Icons for filetypes
return {
	"echasnovski/mini.icons",
	version = false,
	lazy = true,
	specs = {
		-- Redirect any plugin that depends on nvim-web-devicons to mini.icons instead
		{ "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
	},
	init = function()
		package.preload["nvim-web-devicons"] = function()
			require("mini.icons").mock_nvim_web_devicons()
			return package.loaded["nvim-web-devicons"]
		end
	end,
}
