-- https://www.youtube.com/watch?v=g1gyYttzxcI
-- https://github.com/jakobwesthoff/nvim-from-scratch
--
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ','
vim.g.maplocalleader = '\\'

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'core.options'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'core.bootstrap'

-- [[ Configure and install plugins ]]
require 'core.plugins'

-- [[ Basic Keymaps ]]
require 'core.keymaps'

-- [[ Configure and install lsp's ]]
require 'core.lsp'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
