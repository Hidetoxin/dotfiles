-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function ()
        local configs = require('nvim-treesitter.configs')

        configs.setup({
            indent = { enable = true },
            highlight = { enable = true },
            auto_install = true,
            sync_install = false,
            ensure_installed = {
              'lua',
              'bicep',
            },

            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = '<Enter>', -- set to `false` to disable one of the mappings
                    node_incremental = '<Enter>',
                    scope_incremental = false,
                    node_decremental = '<Backspace>',
                },
            },
        })
    end
  }
}

-- vim: ts=2 sts=2 sw=2 et
