-- NVIM OPTIONS

vim.g.mapleader       = ','
vim.b.mapleader       = ','
vim.w.mapleader       = ','

vim.opt.list          = true
vim.opt.number        = true
vim.opt.tabstop       = 4
vim.opt.listchars     = 'eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·'
vim.opt.expandtab     = true
--vim.opt.mapleader     = ','
vim.opt.cursorline    = true
vim.opt.background    = 'dark'
vim.opt.cursorcolumn  = true
vim.opt.termguicolors = false
--vim.opt.nocompatible = true
-- let &colorcolumn = join(range(81,999), ",")

-- PLUGIN OPTIONS

-- soywod/himalaya
vim.g.himalaya_mailbox_picker            = 'telescope'
vim.g.himalaya_telescope_preview_enabled = 1

-- wfxr/minimap.vim
vim.g.minimap_width                = 10
vim.g.minimap_git_colors           = 1
vim.g.minimap_auto_start           = 1
vim.g.minimap_highlight_search     = 1
vim.g.minimap_auto_start_win_enter = 0

-- mhinz/vim-startify
vim.g.startify_files_number        = 15
vim.g.startify_change_to_dir       = 1
vim.g.startify_fortune_use_unicode = 1

-- preservim/nerdcommenter
vim.g.NERDSpaceDelims = 1

-- f-person/git-blame.nvim
vim.g.gitblame_enabled          = 0
vim.g.gitblame_date_format      = '%r'
vim.g.gitblame_highlight_group  = 'Comment'
vim.g.gitblame_message_template = '<summary> • <date> • <author> • <sha>'

-- sainnhe/gruvbox-material
vim.g.gruvbox_material_visual                = 'reverse'
vim.g.gruvbox_material_background            = 'medium'
vim.g.gruvbox_material_enable_bold           = 1
vim.g.gruvbox_material_enable_italic_comment = 1

-- machakann/vim-highlightedyank
vim.g.highlightedyank_highlight_duration = -1
