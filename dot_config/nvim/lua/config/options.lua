-- vim: syntax=lua

-- options are automatically loaded before lazy.nvim startup
-- default options that are always set: https://github.com/lazyvim/lazyvim/blob/main/lua/lazyvim/config/options.lua
-- add any additional options here

-- GENERAL OPTIONS
vim.opt.list           = true
vim.opt.number         = true
vim.opt.tabstop        = 4
vim.opt.expandtab      = true
vim.opt.cursorline     = true
vim.opt.background     = "dark"
vim.opt.cursorcolumn   = true
vim.opt.termguicolors  = true
vim.opt.relativenumber = true

-- NON-PRINTABLE CHARACTERS
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("tab:·")
vim.opt.listchars:append("trail:ﰣ")
vim.opt.listchars:append("space:·")
vim.opt.listchars:append("extends:")
vim.opt.listchars:append("precedes:")
-- let &colorcolumn = join(range(81,999), ",")

-- LAZYGIT OPTIONS
vim.g.lazygit_use_neovim_remote              = 1
vim.g.lazygit_floating_window_winblend       = 0
vim.g.lazygit_floating_window_use_plenary    = 1
vim.g.lazygit_floating_window_corner_chars   = { "╭", "╮", "╰", "╯" }
vim.g.lazygit_floating_window_scaling_factor = 0.9

-- HIMALAYA OPTIONS
vim.g.himalaya_mailbox_picker            = "telescope"
vim.g.himalaya_telescope_preview_enabled = 1

-- MINIMAP OPTIONS
vim.g.minimap_width                = 10
vim.g.minimap_git_colors           = 1
vim.g.minimap_auto_start           = 0
vim.g.minimap_block_buftypes       = { "prompt", "nofile", "nowrite", "quickfix", "terminal" }
vim.g.minimap_highlight_search     = 1
vim.g.minimap_auto_start_win_enter = 0
