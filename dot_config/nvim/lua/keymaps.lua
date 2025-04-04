-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- My custom keymaps
-- Easy save and normal mode
vim.keymap.set('i', 'jk', '<esc>', { noremap = false, silent = true, desc = 'Use `jk` instead of the `esc` key as a more ergonomic option' })
vim.keymap.set('n', '<c-s>', ':w<CR>', { noremap = true, silent = false, desc = 'Use `ctrl + s` to save the current buffer' })

-- Remap windows keys
vim.keymap.set('n', '<up>', '<c-w><up>', { noremap = false, silent = false, desc = 'Use `up` key to move to the up window' })
vim.keymap.set('n', '<down>', '<c-w><down>', { noremap = false, silent = false, desc = 'Use `down` key to move to the down window' })
vim.keymap.set('n', '<left>', '<c-w><left>', { noremap = false, silent = false, desc = 'Use `left` key to move to the left window' })
vim.keymap.set('n', '<right>', '<c-w><right>', { noremap = false, silent = false, desc = 'Use `right` key to move to the right window' })

-- Close mapping
vim.keymap.set('n', '<leader>qa', ':qa!<CR>', { noremap = false, silent = false, desc = 'Close `neovim` and all buffers without saving' })
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { noremap = false, silent = false, desc = 'Close current buffer' })
vim.keymap.set('n', '<leader>ba', ':bufdo bd<CR>', { noremap = false, silent = false, desc = 'Close all buffers' })

-- vim: ts=2 sts=2 sw=2 et
