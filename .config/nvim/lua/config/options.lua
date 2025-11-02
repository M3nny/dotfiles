-- Use tabs of 4 spaces width to indent
vim.o.expandtab = false
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Minimum number of lines to be view above/below the cursor
vim.o.scrolloff = 3

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching unless /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Show the sign column
vim.wo.signcolumn = "yes"

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- Enable true color support
vim.o.termguicolors = true
