-- CONFIGURATION
local bufferline = require('bufferline')
bufferline.setup({
  options = {
    mode                         = 'buffers',
    numbers                      = 'none',
    tab_size                     = 18,
    close_icon                   = '',
    diagnostics                  = 'nvim_lsp',
    color_icons                  = true,
    modified_icon                = '●',
    indicator_icon               = '▎',
    separator_style              = {'', ''},
    max_name_length              = 18,
    max_prefix_length            = 15,
    buffer_close_icon            = '',
    left_trunc_marker            = '',
    right_trunc_marker           = '',
    always_show_bufferline       = true,
    diagnostics_update_in_insert = false,
  },
})

-- BINDINGS
vim.api.nvim_set_keymap('n', '<leader>bp', ':BufferLineCycleNext<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>bn', ':BufferLineCyclePrev<CR>', {noremap=true, silent=true})
