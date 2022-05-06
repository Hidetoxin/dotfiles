-- LOAD PLUGINS
require('packer/plugins')

-- SETUP OPTIONS
require('core/options')

-- SETUP BINDINGS
require('core/bindings')

-- SETUP ALL PLUGINS
require('setup/glow')
require('setup/alpha')
require('setup/comment')
require('setup/minimap')
require('setup/lazygit')
require('setup/lualine')
require('setup/gitsigns')
require('setup/whichkey')
require('setup/telescope')
require('setup/bufferline')
require('setup/toggleterm')
require('setup/highlightedyank')

-- colours and fonts
vim.cmd('syntax enable')
vim.cmd('set colorcolumn=80,120')
vim.cmd('colorscheme gruvbox-material')
