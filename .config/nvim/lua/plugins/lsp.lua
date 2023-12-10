return {
    { -- LSP Configuration & Plugins
        "neovim/nvim-lspconfig",
        dependencies = {
          -- Automatically install LSPs to stdpath for neovim
            {
                "williamboman/mason.nvim",
                config = function()
                    -- Setup mason so it can manage external tooling
                    require("mason").setup()

                    -- Ensure the servers above are installed
                    local mason_lspconfig = require "mason-lspconfig"

                    -- LSP servers
                    local servers = {
                      clangd = {},
                    }

                    mason_lspconfig.setup {
                      ensure_installed = vim.tbl_keys(servers),
                    }

                    mason_lspconfig.setup_handlers {
                        function(server_name)
                            require("lspconfig")[server_name].setup {
                            capabilities = capabilities,
                            on_attach = on_attach,
                            settings = servers[server_name],
                            }
                        end,
                    }
                end
            },
          "williamboman/mason-lspconfig.nvim",
        },
    },
}
