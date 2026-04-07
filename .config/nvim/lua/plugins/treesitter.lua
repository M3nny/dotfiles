-- Manage tree-sitter parsers
return {
	"romus204/tree-sitter-manager.nvim",

    -- Load when the parser manager is called
	cmd = "TSManager",

	config = function()
		require("tree-sitter-manager").setup()
	end,
}
