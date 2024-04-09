-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- EASY SAVE AND NORMAL MODE
vim.keymap.set("i", "jk", "<esc>", { noremap = false, silent = true })
vim.keymap.set("n", "<c-s>", ":w<CR>", { noremap = true, silent = false })

-- REMAP LEADER
vim.keymap.set("n", vim.g.mapleader, "", { noremap = true, silent = true })
vim.keymap.set("v", vim.g.mapleader, "", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>sa", ":%y<CR>", { noremap = false, silent = true })

-- REMAP WINDOWS KEYS
vim.keymap.set("n", "<up>", "<c-w><up>", { noremap = false, silent = false })
vim.keymap.set("n", "<down>", "<c-w><down>", { noremap = false, silent = false })
vim.keymap.set("n", "<left>", "<c-w><left>", { noremap = false, silent = false })
vim.keymap.set("n", "<right>", "<c-w><right>", { noremap = false, silent = false })

-- CLOSE MAPPING
vim.keymap.set("n", "<leader>qa", ":qa!<CR>", { noremap = false, silent = false })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { noremap = false, silent = false })
vim.keymap.set("n", "<leader>ba", ":bufdo bd<CR>", { noremap = false, silent = false })
