return {
    { -- Highlight, edit, and navigate code
        "nvim-treesitter/nvim-treesitter",
        build = function()
            pcall(require("nvim-treesitter.install").update { with_sync = true })
        end,
        config = function()
            require("nvim-treesitter.configs").setup {
                -- Add languages to be installed here that you want installed for treesitter
                ensure_installed = { "c", "cpp", "java", "lua", "python", "rust", "typescript", "vimdoc", "vim" },

                highlight = { enable = true },
                indent = { enable = true, disable = { "python" } },
            }
        end,
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
    },
}
