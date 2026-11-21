-- File explorer
return {
	opts = {
		explorer = { enabled = true },
		picker = {
			sources = {
				explorer = {
					hidden = true,
					actions = {
						-- Recursively expand every directory, skipping hidden/ignored ones
						-- unless they're currently shown (toggle with H / I)
						explorer_open_all = function(picker)
							local Tree = require("snacks.explorer.tree")
							local filter = Tree:filter(picker.opts)
							local function open(node)
								Tree:expand(node)
								node.open = true
								for _, child in pairs(node.children) do
									if child.dir and filter(child) then
										open(child)
									end
								end
							end
							open(Tree:find(picker:cwd()))
							require("snacks.explorer.actions").update(picker, { refresh = true })
						end,
					},
					win = {
						list = {
							keys = {
								-- Open files / toggle directories with a single click
								["<LeftRelease>"] = "confirm",
								["<2-LeftMouse>"] = false,
								["E"] = "explorer_open_all",
							},
						},
					},
				},
			},
		},
	},
	keys = {
		{
			"<leader>e",
			function()
				Snacks.explorer.open()
			end,
			desc = "[E]xplorer",
		},
	},
}
