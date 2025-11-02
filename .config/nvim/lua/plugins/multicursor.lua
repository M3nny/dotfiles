return {
	"jake-stewart/multicursor.nvim",
	branch = "1.0",

	-- Load on specific keypress
	keys = "gl",

	config = function()
		local mc = require("multicursor-nvim")
		mc.setup()

		local set = vim.keymap.set

		-- Add or skip adding a new cursor by matching word/selection
		set({ "n", "x" }, "gl", function()
			mc.matchAddCursor(1)
		end)

		-- Add and remove cursors with control + left click.
		set("n", "<c-leftmouse>", mc.handleMouse)
		set("n", "<c-leftdrag>", mc.handleMouseDrag)
		set("n", "<c-leftrelease>", mc.handleMouseRelease)

		-- Disable and enable cursors.
		set({ "n", "x" }, "<c-q>", mc.toggleCursor)

		-- Mappings defined in a keymap layer only apply when there are
		-- multiple cursors. This lets you have overlapping mappings.
		mc.addKeymapLayer(function(layerSet)
			-- Enable and clear cursors using escape.
			layerSet("n", "<esc>", function()
				if not mc.cursorsEnabled() then
					mc.enableCursors()
				else
					mc.clearCursors()
				end
			end)
		end)
	end,
}
