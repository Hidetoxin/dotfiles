-- vim syntax=lua

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- A any additional options here

-- SETUP LEADER
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- GENERAL OPTIONS
vim.opt.list = true
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.background = "dark"
vim.opt.colorcolumn = "79,119,159,199"
vim.opt.cursorcolumn = true
vim.opt.termguicolors = true
vim.opt.relativenumber = true

-- NON-PRINTABLE CHARACTERS
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("tab:·")
vim.opt.listchars:append("trail:ﰣ")
vim.opt.listchars:append("space:·")
vim.opt.listchars:append("extends:")
vim.opt.listchars:append("precedes:")
