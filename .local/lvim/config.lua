--[[
                        ___                  ___                        
                      /'___\ __             /\_ \                       
  ___    ___     ___ /\ \__//\_\     __     \//\ \    __  __     __     
 /'___\ / __`\ /' _ `\ \ ,__\/\ \  /'_ `\     \ \ \  /\ \/\ \  /'__`\   
/\ \__//\ \L\ \/\ \/\ \ \ \_/\ \ \/\ \L\ \  __ \_\ \_\ \ \_\ \/\ \L\.\_ 
\ \____\ \____/\ \_\ \_\ \_\  \ \_\ \____ \/\_\/\____\\ \____/\ \__/.\_\
 \/____/\/___/  \/_/\/_/\/_/   \/_/\/___L\ \/_/\/____/ \/___/  \/__/\/_/
                                     /\____/                            
                                     \_/__/                             
--]]

-- Defaults
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "cpp",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Plugins --
lvim.plugins = {
  { "catppuccin/nvim", as = "catppuccin" },
  { "karb94/neoscroll.nvim" },
  { "ggandor/lightspeed.nvim" }
}

-- Plugins config --
require('neoscroll').setup()

-- Appearance --
vim.g.catppuccin_flavour = "mocha"
lvim.colorscheme = "catppuccin"

require("catppuccin").setup({
  integrations = {
    telescope = true,
    nvimtree = true,
    dashboard = true,
    lightspeed = true,
    notify = true
  }
})
