-- NVIM OPTIONS

vim.g.mapleader       = ','
vim.b.mapleader       = ','
vim.w.mapleader       = ','

vim.opt.list          = true
vim.opt.number        = true
vim.opt.tabstop       = 4
vim.opt.expandtab     = true
vim.opt.cursorline    = true
vim.opt.background    = 'dark'
vim.opt.cursorcolumn  = true
vim.opt.termguicolors = true
vim.opt.listchars:append('eol:↴')
vim.opt.listchars:append('tab:·')
vim.opt.listchars:append('trail:ﰣ')
vim.opt.listchars:append('space:·')
vim.opt.listchars:append('extends:')
vim.opt.listchars:append('precedes:')
-- let &colorcolumn = join(range(81,999), ",")

-- PLUGIN OPTIONS

-- soywod/himalaya
vim.g.himalaya_mailbox_picker            = 'telescope'
vim.g.himalaya_telescope_preview_enabled = 1

-- wfxr/minimap.vim
vim.g.minimap_width                = 10
vim.g.minimap_git_colors           = 1
vim.g.minimap_auto_start           = 1
vim.g.minimap_block_buftypes       = {'prompt', 'nofile', 'nowrite', 'quickfix', 'terminal'}
vim.g.minimap_highlight_search     = 1
vim.g.minimap_auto_start_win_enter = 0

-- mhinz/vim-startify
vim.g.startify_files_number        = 15
vim.g.startify_change_to_dir       = 1
vim.g.startify_fortune_use_unicode = 1

-- myusuf3/numbers.vim
vim.g.numbers_exclude = {
  'minimap',
  'nvim-tree.lua',
  'startify',
  'toggleterm',
}

-- liuchengxu/vista.vim
vim.g.vista_icon_indent          = {'╰─▸ ', '├─▸ '}
vim.g.vista_fold_toggle_icons    = {'▼', '▶'}
vim.g.vista_default_executive    = 'vim_lsp'
-- let g:vista#renderer#enable_icon = 1
-- vim.fn['vista#renderer#enable_icon']
--   let g:vista#extensions           = ["go", "python", "markdown"]
-- let g:vista#renderer#icons       = {
-- \   "function": "\uf794",
-- \   "variable": "\uf71b",
-- \  }

-- kdheepak/lazygit.nvim
vim.g.lazygit_use_neovim_remote              = 1
vim.g.lazygit_floating_window_winblend       = 0
vim.g.lazygit_floating_window_use_plenary    = 1
vim.g.lazygit_floating_window_corner_chars   = {'╭', '╮', '╰', '╯'}
vim.g.lazygit_floating_window_scaling_factor = 0.9

-- preservim/nerdcommenter
vim.g.NERDSpaceDelims     = 1
vim.g.NERDCompactSexyComs = 1

-- f-person/git-blame.nvim
vim.g.gitblame_enabled          = 1
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
