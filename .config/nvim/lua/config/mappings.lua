-- remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

local opts = { noremap = true, silent = true, buffer = bufnr }

vim.keymap.set("i", "kj", "<Esc>", opts) -- map <kj> to <Esc>
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- hover docs
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- go to definition
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts) -- go to references
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts) -- go to implementation
