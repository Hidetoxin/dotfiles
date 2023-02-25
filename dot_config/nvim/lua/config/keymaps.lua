-- vim: syntax=lua

-- keymaps are automatically loaded on the verylazy event
-- default keymaps that are always set: https://github.com/lazyvim/lazyvim/blob/main/lua/lazyvim/config/keymaps.lua
-- add any additional keymaps here

-- EASY SAVE AND NORMAL MODE
vim.api.nvim_set_keymap("i", "jk", "<esc>", { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "<c-s>", ":w<CR>", { noremap = true, silent = false })

-- REMAP LEADER
vim.api.nvim_set_keymap("n", vim.g.mapleader, "", { noremap =true, silent = true })
vim.api.nvim_set_keymap("v", vim.g.mapleader, "", { noremap =true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sa", ":%y<CR>", { noremap = false, silent = true })

-- REMAP WINDOWS KEYS
vim.api.nvim_set_keymap("n", "<up>", "<c-w><up>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<down>", "<c-w><down>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<left>", "<c-w><left>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<right>", "<c-w><right>", { noremap = false, silent = false })

-- CLOSE MAPPINGS
vim.api.nvim_set_keymap("n", "<leader>qa", ":qa!<CR>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>bd", ":bd<CR>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>ba", ":bufdo bd<CR>", { noremap = false, silent = false })

-- GLOW KEYMAPPINGS
vim.api.nvim_set_keymap("n", "<leader>md", ":Glow<CR>", {noremap=true, silent=true})

-- MINIMAP KEYMAPPINGS
vim.api.nvim_set_keymap("n", "<leader>mm", ":MinimapToggle<CR>", { noremap = true, silent = true })

-- LAZYGIT KEYMAPPINGS
vim.api.nvim_set_keymap("n", "<leader>lg", ":LazyGit<CR>", { noremap = true, silent = true } )

-- GITSIGNS KEYMAPPINGS
vim.api.nvim_set_keymap("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { noremap = false, silent = false })

-- HIMALAYA KEYMAPPINGS
vim.api.nvim_set_keymap("n", "<leader>hi", ":Himalaya<CR>", { noremap= true, silent = true })

-- TELESCOPE KEYMAPPINGS
vim.api.nvim_set_keymap("n", "<leader>em", ":Telescope emoji<CR>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>nc", ":Telescope neoclip<CR>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>gh", ":Telescope ghq list<CR>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>rg", ":Telescope live_grep<CR>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>gf", ":Telescope git_files<CR>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>ts", ":Telescope treesitter<CR>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope file_browser<CR>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>zl", ":Telescope zoxide list<CR>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader><CR>", ":Telescope buffers<CR>", { noremap = false, silent = false })
vim.api.nvim_set_keymap("n", "<leader>td", ":TodoTelescope<CR>", { noremap = false, silent = false })

-- BUFFERLINE KEYMAPPINGS
vim.api.nvim_set_keymap("n", "<leader>bp", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bn", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
