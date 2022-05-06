-- CONFIGURATION
local gitsigns = require('gitsigns')
gitsigns.setup({
  yadm                         = {
    enable = false
  },
  signs                        = {
    add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  numhl                        = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl                       = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff                    = false, -- Toggle with `:Gitsigns toggle_word_diff`
  signcolumn                   = true,  -- Toggle with `:Gitsigns toggle_signs`
  watch_gitdir                 = {
    interval     = 1000,
    follow_files = true
  },
  sign_priority                = 6,
  preview_config               = {
    row      = 0,
    col      = 1,
    style    = 'minimal',
    border   = 'single',
    relative = 'cursor',
  },
  update_debounce              = 100,
  max_file_length              = 40000,
  status_formatter             = nil, -- Use default
  current_line_blame           = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  attach_to_untracked          = true,
  current_line_blame_opts      = {
    delay             = 0,
    virt_text         = true,
    virt_text_pos     = 'eol', -- 'eol' | 'overlay' | 'right_align'
    ignore_whitespace = false,
  },
  current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
})

-- BINDINGS
vim.api.nvim_set_keymap('n', '<leader>gb', ':Gitsigns toggle_current_line_blame<CR>', {noremap=false, silent=false})
