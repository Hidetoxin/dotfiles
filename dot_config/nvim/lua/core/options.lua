-- BIND LEADER KEY
vim.g.mapleader = ','
vim.b.mapleader = ','
vim.w.mapleader = ','

-- GENERAL OPTIONS
vim.opt.list           = true
vim.opt.number         = true
vim.opt.tabstop        = 4
vim.opt.expandtab      = true
vim.opt.cursorline     = true
vim.opt.background     = 'dark'
vim.opt.cursorcolumn   = true
vim.opt.termguicolors  = true
vim.opt.relativenumber = true

-- NON-PRINTABLE CHARACTERS
vim.opt.listchars:append('eol:↴')
vim.opt.listchars:append('tab:·')
vim.opt.listchars:append('trail:ﰣ')
vim.opt.listchars:append('space:·')
vim.opt.listchars:append('extends:')
vim.opt.listchars:append('precedes:')
-- let &colorcolumn = join(range(81,999), ",")

-- APPEARANCE
vim.cmd('syntax enable')
vim.cmd('set colorcolumn=80,120')
vim.cmd('colorscheme gruvbox-material')
