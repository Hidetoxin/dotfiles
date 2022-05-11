-- CONFIGURATION
local telescope = require('telescope')
telescope.setup({
  pickers  = {
    find_files = {theme='dropdown'}
  },
  defaults = {
    layout_config = {width = 0.8}
  },
})
telescope.load_extension('ghq')
telescope.load_extension('ghq')
telescope.load_extension('emoji')
telescope.load_extension('zoxide')
telescope.load_extension('file_browser')

-- BINDINGS
vim.api.nvim_set_keymap('n', '<leader>em', ':Telescope emoji<CR>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<leader>nc', ':Telescope neoclip<CR>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<leader>gh', ':Telescope ghq list<CR>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<leader>rg', ':Telescope live_grep<CR>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<leader>gf', ':Telescope git_files<CR>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<leader>ts', ':Telescope treesitter<CR>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope file_browser<CR>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<leader>zl', ':Telescope zoxide list<CR>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<leader><CR>', ':Telescope buffers<CR>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<leader>td', ':TodoTelescope<CR>', {noremap=false, silent=false})
