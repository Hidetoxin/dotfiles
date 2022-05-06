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

 -- -- soywod/himalaya
 -- map('n', '<leader>em', ':Himalaya<CR>', {noremap=true, silent=true})

 -- --liuchengxu/vista.vim
 -- map('n', '<leader>vv', ':Vista!!<CR>', {noremap=true, silent=false})
 -- 
 -- -- myusuf3/numbers.vim
 -- map('n', '<leader>nn', ':NumbersOff<CR>', {noremap=true, silent=false})
 -- map('n', '<leader>nt', ':NumbersToggle<CR>', {noremap=true, silent=false})
 -- 
 -- -- folke/twilight.nvim
 -- map('n', '<leader>tw', ':Twilight<CR>', {noremap=true, silent=true})
 
 -- -- akinsho/bufferline.nvim
 -- map('n', '<leader>bp', ':BufferLineCycleNext<CR>', {noremap=true, silent=true})
 -- map('n', '<leader>bn', ':BufferLineCyclePrev<CR>', {noremap=true, silent=true})
 -- 
 -- -- kyazdani42/nvim-tree.lua
 -- map('n', '<leader>tt', ':NvimTreeToggle<CR>', {noremap=true, silent=true})
 -- 
 -- -- folke/todo-comments.nvim
 -- map('n', '<leader>td', ':TodoTelescope<CR>', {noremap=false, silent=false})
