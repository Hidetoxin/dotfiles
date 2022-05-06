-- OPTIONS
vim.g.minimap_width                = 10
vim.g.minimap_git_colors           = 1
vim.g.minimap_auto_start           = 0
vim.g.minimap_block_buftypes       = {'prompt', 'nofile', 'nowrite', 'quickfix', 'terminal'}
vim.g.minimap_highlight_search     = 1
vim.g.minimap_auto_start_win_enter = 0

-- BINDINGS
vim.api.nvim_set_keymap('n', '<leader>mm', ':MinimapToggle<CR>', {noremap = true, silent = true})
