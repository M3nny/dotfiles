return {
    { -- Fuzzy Finder (files, lsp, etc)
        "nvim-telescope/telescope.nvim",
        config = function()
            require("telescope").setup {
                defaults = {
                    mappings = {
                        i = {
                            ["<C-u>"] = false,
                            ["<C-d>"] = false,
                        },
                    },
                },
            }

            -- Enable telescope fzf native, if installed
            pcall(require("telescope").load_extension, "fzf")

            -- See `:help telescope.builtin`
            vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
            vim.keymap.set("n", "<leader><space>", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })
            vim.keymap.set("n", "<leader>/", function()

                -- You can pass additional configuration to telescope to change theme, layout, etc.
                require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
                    winblend = 10,
                    previewer = false,
                })
            end, { desc = "[/] Fuzzily search in current buffer]" })

            vim.keymap.set("n", "<leader>f", require("telescope.builtin").find_files, { desc = "[F]ind [F]iles" })
            vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
        end,
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons"},
    },

    { -- Fuzzy Finder Algorithm which dependencies local dependencies to be built. Only load if `make` is available
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = vim.fn.executable "make" == 1
    },
}
