-- remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", {expr = true, silent = true})
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", {expr = true, silent = true})

-- map <kj> to <Esc>
local options = {noremap = true}
vim.keymap.set("i", "kj", "<Esc>", options)
