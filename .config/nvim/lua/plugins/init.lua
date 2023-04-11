return {
    { -- LSP Configuration & Plugins
        'neovim/nvim-lspconfig',
        dependencies = {
          -- Automatically install LSPs to stdpath for neovim
            {
                'williamboman/mason.nvim',
                config = function()
                    -- Setup mason so it can manage external tooling
                    require('mason').setup()

                    -- Ensure the servers above are installed
                    local mason_lspconfig = require 'mason-lspconfig'

                    -- LSP servers
                    local servers = {
                      clangd = {},
                    }

                    mason_lspconfig.setup {
                      ensure_installed = vim.tbl_keys(servers),
                    }

                    mason_lspconfig.setup_handlers {
                        function(server_name)
                            require('lspconfig')[server_name].setup {
                            capabilities = capabilities,
                            on_attach = on_attach,
                            settings = servers[server_name],
                            }
                        end,
                    }
                end
            },
          'williamboman/mason-lspconfig.nvim',
        },
    },
    { -- Autocompletion
        'hrsh7th/nvim-cmp',
        dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
    },

    { -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        build = function()
            pcall(require('nvim-treesitter.install').update { with_sync = true })
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
            'nvim-treesitter/nvim-treesitter-context', -- Sticky headers
        }
    },

    { -- Fuzzy Finder (files, lsp, etc)
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    { -- Fuzzy Finder Algorithm which dependencies local dependencies to be built. Only load if `make` is available
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = vim.fn.executable 'make' == 1
    },

    { -- Theme
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                no_italic = true, -- Force no italic
            })
            vim.o.termguicolors = true
            vim.cmd.colorscheme "catppuccin"
        end,
    },

    { -- Statusbar
        'feline-nvim/feline.nvim',
        config = function()
            -- Set feline as statusline with catppuccin theme
            local ctp_feline = require('catppuccin.groups.integrations.feline')
            require("feline").setup({
                components = ctp_feline.get(),
            })
        vim.cmd("set noshowmode")
        end
    },

    {
        'lukas-reineke/indent-blankline.nvim', -- Add indentation guides even on blank lines
        config = function()
            require("indent_blankline").setup {
                space_char_blankline = " ",
                show_current_context = true,
                show_current_context_start = true,
            }
            indent_blankline = {
                enabled = true,
                colored_indent_levels = false,
            }
        end
    },

    { -- Autopairs
        'steelsojka/pears.nvim',
        config = function()
            require("pears").setup()
        end
    },

    { -- Use "gc" to comment visual regions/lines
        'numToStr/Comment.nvim',
        config = function()
            require("Comment").setup()
        end
    },

    'tpope/vim-fugitive', -- Git plugin
    'ggandor/lightspeed.nvim', -- Jump from a word to another
    'nvim-tree/nvim-web-devicons', -- Nerdfont icons
}
