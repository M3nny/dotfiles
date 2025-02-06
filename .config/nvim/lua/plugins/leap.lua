-- leap from a word to another
return {
	"ggandor/leap.nvim",

	config = function()
		require("leap").add_default_mappings()
	end
}
