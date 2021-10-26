-- NVIM BINDINGS

vim.api.nvim_set_keymap('n', vim.g.mapleader, '', {noremap = true})
vim.api.nvim_set_keymap('v', vim.g.mapleader, '', {noremap = true})

vim.api.nvim_set_keymap('i', 'jk', '<esc>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<c-s>', ':ws<cr>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>sa', ':%y<cr>', {noremap = false, silent = true})

vim.api.nvim_set_keymap('n', '<up>', '<c-w><up>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<down>', '<c-w><down>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<left>', '<c-w><left>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<right>', '<c-w><right>', {noremap = false, silent = false})

-- PLUGIN BINDINGS

-- myusuf3/numbers.vim
vim.api.nvim_set_keymap('n', 'nn', ':NumbersOff<cr>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'nt', ':NumbersToggle<cr>', {noremap = true, silent = false})

-- haya14busa/incsearch.vim
--map g/ <Plug>(incsearch-stay)
--map /  <Plug>(incsearch-forward)
--map ?  <Plug>(incsearch-backward)
--vim.api.nvim_set_keymap('', '', '', {noremap = true, silent = false})
--vim.api.nvim_set_keymap('', '', '', {noremap = true, silent = false})
--vim.api.nvim_set_keymap('', '', '', {noremap = true, silent = false})

-- nvim-telescope/telescope.nvim
vim.api.nvim_set_keymap('n', '<leader>rg', ':Telescope live_grep<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gf', ':Telescope git_files<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader><cr>', ':Telescope buffers<cr>', {noremap = true, silent = true})

--nnoremap <leader>ft                :FloatermFirst<CR>
--nnoremap <leader>ftn               :FloatermNew<CR>
--tnoremap <silent><F12> <C-\\><C-n> :FloatermToggle<CR>
--vim.api.nvim_set_keymap('', '', '', {noremap = true, silent = false})
--vim.api.nvim_set_keymap('', '', '', {noremap = true, silent = false})
--vim.api.nvim_set_keymap('', '', '', {noremap = true, silent = false})

-- haya14busa/incsearch-easymotion.vim
--map z/ <Plug>(incsearch-easymotion-/)
--map z? <Plug>(incsearch-easymotion-?)
--map zg/ <Plug>(incsearch-easymotion-stay)
