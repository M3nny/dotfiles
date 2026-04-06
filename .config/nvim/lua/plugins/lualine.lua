-- Statusline
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-mini/mini.icons" },
	event = "VeryLazy",
	init = function()
		vim.o.showmode = false
	end,
	opts = {
		options = {
			theme = "catppuccin-mocha",
			globalstatus = true,
			section_separators = { left = "", right = "" },
			component_separators = "",
			disabled_filetypes = {
				statusline = { "snacks_explorer", "oil", "mason", "lazy" },
			},
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = {
				{
					"branch",
					icon = "󰊢 ",
					color = { fg = "#f2cdcd", bg = "#45475a", gui = "bold" }, -- catppuccin mocha flamingo, surface 1
					separator = { right = "" },
				},
			},
			lualine_c = {
				{
					"filename",
					path = 1,
					symbols = {
						modified = "●",
						readonly = "󰌾 ",
						unnamed = "[No Name]",
					},
				},
			},
			lualine_x = {
				{
					"diff",
					source = function()
						local gs = vim.b.gitsigns_status_dict
						if gs then
							return {
								added = gs.added,
								modified = gs.changed,
								removed = gs.removed,
							}
						end
					end,
					symbols = {
						added = " ",
						modified = " ",
						removed = " ",
					},
					colored = true,
					always_visible = false,
				},
				-- separator
				{
					function()
						return "󰇙"
					end,
					color = { fg = "#45475a" }, -- catppuccin mocha surface 1
					padding = { left = 1, right = 1 },
				},
				{
					"diagnostics",
					sources = { "nvim_diagnostic" },
					sections = { "error", "warn", "info", "hint" },
					symbols = {
						error = "󰅚 ",
						warn = "󰀪 ",
						info = "󰋽 ",
						hint = "󰌶 ",
					},
					colored = true,
					update_in_insert = false,
					always_visible = false,
				},
				{
					function()
						local clients = vim.lsp.get_clients({ bufnr = 0 })
						if #clients == 0 then
							return ""
						end
						local names = {}
						for _, c in ipairs(clients) do
							table.insert(names, c.name)
						end
						return "󰅣  " .. table.concat(names, ", ")
					end,
				},
				{ "filetype", icon_only = true },
			},
			lualine_y = {},
			lualine_z = {},
		},
		inactive_sections = {
			lualine_c = { { "filename", path = 1 } },
			lualine_x = {},
		},
	},
}
