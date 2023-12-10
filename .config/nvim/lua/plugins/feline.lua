return {
    { -- Statusbar
        "feline-nvim/feline.nvim",
        config = function()
            -- Set feline as statusline with catppuccin theme
            local ctp_feline = require("catppuccin.groups.integrations.feline")
            require("feline").setup({
                components = ctp_feline.get(),
            })
        vim.cmd("set noshowmode")
        end
    },
}
