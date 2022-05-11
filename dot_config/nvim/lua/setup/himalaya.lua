-- BINDINGS
vim.api.nvim_set_keymap('n', '<leader>hi', ':Himalaya<CR>', {noremap=true, silent=true})

-- OPTIONS
vim.g.himalaya_mailbox_picker            = 'telescope'
vim.g.himalaya_telescope_preview_enabled = 1
