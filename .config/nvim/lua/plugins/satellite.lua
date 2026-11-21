-- Scrollbar with diagnostics
return {
	"lewis6991/satellite.nvim",

	event = "VeryLazy",
	opts = {
		current_only = false,
		winblend = 50,
		zindex = 40,
		excluded_filetypes = {},
		width = 2,
		handlers = {
			cursor = {
				enable = true,
				symbols = { "⎺", "⎻", "⎼", "⎽" },
			},
			search = {
				enable = true,
			},
			diagnostic = {
				enable = true,
				signs = { "-", "=", "≡" },
				min_severity = vim.diagnostic.severity.HINT,
			},
			gitsigns = {
				enable = true,
				signs = { -- can only be a single character (multibyte is okay)
					add = "│",
					change = "│",
					delete = "-",
				},
			},
			marks = {
				enable = false,
				show_builtins = false, -- shows the builtin marks like [ ] < >
				key = "m",
			},
			minidiff = {
				enable = true,
				signs = { -- can only be a single character (multibyte is okay)
					add = "│",
					change = "│",
					delete = "-",
				},
			},
			quickfix = {
				signs = { "-", "=", "≡" },
			},
		},
	},

	config = function(_, opts)
		require("satellite").setup(opts)

		-- Don't let snacks smooth-scroll replay a scrollbar drag after release:
		-- pause it during the drag and drop its saved view so the jump isn't animated
		local mouse = require("satellite.mouse")
		local handle_leftmouse = mouse.handle_leftmouse
		mouse.handle_leftmouse = function(...)
			vim.g.snacks_scroll = false
			local ok, err = pcall(handle_leftmouse, ...)
			for _, win in ipairs(vim.api.nvim_list_wins()) do
				Snacks.scroll.check(win)
			end
			vim.g.snacks_scroll = nil
			if not ok then
				error(err)
			end
		end
	end,
}
