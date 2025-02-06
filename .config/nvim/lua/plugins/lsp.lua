-- lsp configuration & plugins
return {
    "neovim/nvim-lspconfig",

    dependencies = {
        {
            -- automatically install lsp(s) to stdpath for neovim
            "williamboman/mason.nvim",

            config = function()
                -- setup mason so it can manage external tooling
                require("mason").setup()

                -- ensure the servers above are installed
                local mason_lspconfig = require "mason-lspconfig"

                -- lsp servers
                local servers = {
                    clangd = {}
                }

                mason_lspconfig.setup {
                    ensure_installed = vim.tbl_keys(servers)
                }

                mason_lspconfig.setup_handlers {
                    function(server_name)
                        require("lspconfig")[server_name].setup {
                            capabilities = capabilities,
                            on_attach = on_attach,
                            settings = servers[server_name]
                        }
                    end
                }
            end
        },

        "williamboman/mason-lspconfig.nvim"
    }
}
