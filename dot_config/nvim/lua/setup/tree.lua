-- CONFIGURATION
local tree = require('nvim-tree')
tree.setup({
  view     = {
    side   = 'left',
    width  = 30,
    height = 30,
  },
  open_on_tab   = true,
  open_on_setup = true,
  disable_netrw = true,
})

-- BINDINGS
vim.api.nvim_set_keymap('n', '<leader>tt', ':NvimTreeToggle<CR>', {noremap=true, silent=true})
