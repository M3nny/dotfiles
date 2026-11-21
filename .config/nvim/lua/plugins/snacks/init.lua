local opts, keys = {}, {}
for name in vim.fs.dir(vim.fn.stdpath("config") .. "/lua/plugins/snacks") do
	if name ~= "init.lua" and name:sub(-4) == ".lua" then
		local feature = require("plugins.snacks." .. name:sub(1, -5))
		opts = vim.tbl_deep_extend("force", opts, feature.opts or {})
		vim.list_extend(keys, feature.keys or {})
	end
end

return {
	"folke/snacks.nvim",
	lazy = false,
	priority = 1000,

	---@type snacks.Config
	opts = opts,
	keys = keys,
}
