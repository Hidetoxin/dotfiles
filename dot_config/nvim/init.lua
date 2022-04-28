-- LOAD NEOVIM PLUGINS
require('plugins')

-- LOAD NEOVIM OPTIONS
require('options')

-- LOAD NEOVIM BINDINGS
require('bindings')

-- colours and fonts
vim.cmd('syntax enable')
vim.cmd('set colorcolumn=80,120')
vim.cmd('colorscheme gruvbox-material')
