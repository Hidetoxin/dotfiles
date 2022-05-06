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

-- soywod/himalaya
-- vim.g.himalaya_mailbox_picker            = 'telescope'
-- vim.g.himalaya_telescope_preview_enabled = 1

-- -- liuchengxu/vista.vim
-- vim.g.vista_icon_indent          = {'╰─▸ ', '├─▸ '}
-- vim.g.vista_fold_toggle_icons    = {'▼', '▶'}
-- vim.g.vista_default_executive    = 'vim_lsp'
-- -- let g:vista#renderer#enable_icon = 1
-- -- vim.fn['vista#renderer#enable_icon']
-- --   let g:vista#extensions           = ["go", "python", "markdown"]
-- -- let g:vista#renderer#icons       = {
-- -- \   "function": "\uf794",
-- -- \   "variable": "\uf71b",
-- -- \  }
