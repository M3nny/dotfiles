-- autopairs
return {
	"steelsojka/pears.nvim",

	-- load when creating or opening a file
	event = { "BufNewFile", "BufReadPre" },

	config = function()
		require("pears").setup(function(conf)
			-- enable html tag matching
			conf.preset("tag_matching")
		end)
	end,
}
