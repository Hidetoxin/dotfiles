return {
  {
    'xiyaowong/transparent.nvim',
    lazy = false,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    opts = {
      exclude_groups = {
        'CursorLine',
        'CursorLineNr',
        'CursorColumn',
      },
    },
    config = function()
      local transparent = require 'transparent'
      transparent.clear_prefix 'Lazy'
      transparent.clear_prefix 'WhichKey'
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
