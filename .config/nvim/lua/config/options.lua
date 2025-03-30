-- use tabs of 4 spaces width to indent
vim.o.expandtab = false
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- minimum number of lines to be view above/below the cursor
vim.o.scrolloff = 3

-- make line numbers default
vim.wo.number = true

-- enable mouse mode
vim.o.mouse = "a"

-- enable break indent
vim.o.breakindent = true

-- save undo history
vim.o.undofile = true

-- case insensitive searching unless /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- show the sign column
vim.wo.signcolumn = "yes"

-- set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- enable true color support
vim.o.termguicolors = true
