-- EASY SAVE AND NORMAL MODE
vim.api.nvim_set_keymap('i', 'jk', '<esc>', {noremap=false, silent=true})
vim.api.nvim_set_keymap('n', '<c-s>', ':w<CR>', {noremap=true, silent=false})

-- REMAP LEADER
vim.api.nvim_set_keymap('n', vim.g.mapleader, '', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', vim.g.mapleader, '', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>sa', ':%y<CR>', {noremap=false, silent=true})

-- REMAP WINDOWS KEYS
vim.api.nvim_set_keymap('n', '<up>', '<c-w><up>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<down>', '<c-w><down>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<left>', '<c-w><left>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<right>', '<c-w><right>', {noremap=false, silent=false})

-- CLOSE MAPPINGA
vim.api.nvim_set_keymap('n', '<leader>qa', ':qa!<CR>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<leader>bd', ':bd<CR>', {noremap=false, silent=false})
vim.api.nvim_set_keymap('n', '<leader>ba', ':bufdo bd<CR>', {noremap=false, silent=false})
