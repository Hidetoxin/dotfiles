-- CONFIGURATION
local blankline = require('indent_blankline')
blankline.setup({
  char                 = '',
  show_end_of_line     = true,
  bufftype_exclude     = {'terminal'},
  show_current_context = true,
})
