return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    opts = {
        view_options = {
            show_hidden = true,
        },
    },
    -- Optional dependencies
    -- dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
}

-- vim: ts=2 sts=2 sw=2 et
