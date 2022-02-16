-- NVIM BINDINGS

local map = vim.api.nvim_set_keymap
local opt_tt = {noremap = true, silent = true}
local opt_tf = {noremap = true, silent = false}
local opt_ft = {noremap = false, silent = true}
local opt_ff = {noremap = false, silent = false}

map('i', 'jk', '<esc>', opt_ft)
map('n', '<c-s>', ':w<CR>', opt_tf)
map('n', vim.g.mapleader, '', opt_tt)
map('v', vim.g.mapleader, '', opt_tt)
map('n', '<leader>sa', ':%y<CR>', opt_ft)

map('n', '<up>', '<c-w><up>', opt_ff)
map('n', '<down>', '<c-w><down>', opt_ff)
map('n', '<left>', '<c-w><left>', opt_ff)
map('n', '<right>', '<c-w><right>', opt_ff)

-- PLUGIN BINDINGS

-- soywod/himalaya
map('n', '<leader>em', ':Himalaya<CR>', opt_tt)

-- wfxr/minimap.vim
map('n', '<leader>mm', ':MinimapToggle<CR>', opt_tt)

--liuchengxu/vista.vim
map('n', '<leader>vv', ':Vista!!<CR>', opt_tf)

-- myusuf3/numbers.vim
map('n', '<leader>nn', ':NumbersOff<CR>', opt_tf)
map('n', '<leader>nt', ':NumbersToggle<CR>', opt_tf)

-- folke/twilight.nvim
map('n', '<leader>tw', ':Twilight<CR>', opt_tt)

-- ellisonleao/glow.nvim
map('n', '<leader>md', ':Glow<CR>', opt_tt)

-- kdheepak/lazygit.nvim
map('n', '<leader>lg', ':LazyGit<CR>', opt_tt)

-- akinsho/bufferline.nvim
map('n', '<leader>bp', ':BufferLineCycleNext<CR>', opt_tt)
map('n', '<leader>bn', ':BufferLineCyclePrev<CR>', opt_tt)

-- kyazdani42/nvim-tree.lua
map('n', '<leader>tt', ':NvimTreeToggle<CR>', opt_tt)

-- folke/todo-comments.nvim
map('n', '<leader>td', ':TodoTelescope<CR>', opt_ff)

-- nvim-telescope/telescope.nvim
map('n', '<leader>em', ':Telescope emoji<CR>', opt_ff)
map('n', '<leader>nc', ':Telescope neoclip<CR>', opt_ff)
map('n', '<leader>gh', ':Telescope ghq list<CR>', opt_ff)
map('n', '<leader>rg', ':Telescope live_grep<CR>', opt_ff)
map('n', '<leader>gf', ':Telescope git_files<CR>', opt_ff)
map('n', '<leader>ff', ':Telescope find_files<CR>', opt_ff)
map('n', '<leader>ts', ':Telescope treesitter<CR>', opt_ff)
map('n', '<leader>fb', ':Telescope file_browser<CR>', opt_ff)
map('n', '<leader>zl', ':Telescope zoxide list<CR>', opt_ff)
map('n', '<leader><CR>', ':Telescope buffers<CR>', opt_ff)
