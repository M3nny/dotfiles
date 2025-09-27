-- remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

local opts = { noremap = true, silent = true, buffer = bufnr }

vim.keymap.set("i", "kj", "<Esc>", opts) -- map <kj> to <Esc>

-- lsp keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- hover docs
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- go to definition
vim.keymap.set("n", "rn", vim.lsp.buf.rename, opts) -- rename the variable under the cursor across files
vim.keymap.set("n", "ca", vim.lsp.buf.code_action, opts) -- show code actions

-- disable yank on delete
vim.keymap.set("n", "d", '"_d', { noremap = true })
vim.keymap.set("n", "D", '"_D', { noremap = true })
vim.keymap.set("n", "x", '"_x', { noremap = true })
vim.keymap.set("n", "X", '"_X', { noremap = true })
vim.keymap.set("n", "c", '"_c', { noremap = true })
vim.keymap.set("n", "C", '"_C', { noremap = true })

local function toggle_virtual_lines()
	--@type boolean|table
	local current_virtual_lines_config = vim.diagnostic.config().virtual_lines

	if current_virtual_lines_config then
		-- disable virtual lines if they were previously enabled
		vim.diagnostic.config({ virtual_lines = false })
	else
		-- enable virtual lines if they were previously disabled
		vim.diagnostic.config({ virtual_lines = { current_line = true } })
	end
end

vim.keymap.set("n", "L", toggle_virtual_lines, opts) -- toggle virtual lines
