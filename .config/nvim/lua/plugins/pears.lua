-- autopairs
return {
	"steelsojka/pears.nvim",

	-- load when entering insert mode
	event = "InsertEnter",

	config = function()
		require("pears").setup(function(conf)
			-- enable html tag matching
			conf.preset("tag_matching")
		end)
	end,
}
