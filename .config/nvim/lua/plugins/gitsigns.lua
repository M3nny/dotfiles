-- Git hunk view
return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		current_line_blame = false,
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			local function map(mode, lhs, rhs, desc)
				vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
			end

			-- Preview / diff
			map("n", "<leader>hp", gs.preview_hunk, "Preview Hunk")
			map("n", "<leader>hd", gs.diffthis, "Diff File")
			map("n", "<leader>hD", function()
				vim.cmd("diffoff!")
				vim.cmd("only")
			end, "Close Diff")

			-- Stage / unstage
			map("n", "<leader>hs", gs.stage_hunk, "Stage Hunk")
			map("n", "<leader>hu", gs.undo_stage_hunk, "Unstage Hunk")
			map("n", "<leader>hS", gs.stage_buffer, "Stage Buffer")

			-- Reset (restore)
			map("n", "<leader>hr", gs.reset_hunk, "Reset Hunk")
			map("n", "<leader>hR", gs.reset_buffer, "Reset Buffer")

			-- Blame
			map("n", "<leader>gb", gs.toggle_current_line_blame, "Toggle Line Blame")
		end,
	},
}
