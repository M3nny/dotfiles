return {
    { -- Jump from a word to another
        'ggandor/leap.nvim',
        config = function()
            require('leap').add_default_mappings()
        end
    },
}
