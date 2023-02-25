-- vim: syntax=lua

-- SETUP LEADER BEFORE PLUGIN MANAGER
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- download lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

-- START PLUGIN MANAGER
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

-- TODO rmove these options to keymaps.lua 
-- general options
vim.opt.list           = true
vim.opt.number         = true
vim.opt.tabstop        = 4
vim.opt.expandtab      = true
vim.opt.cursorline     = true
vim.opt.background     = "dark"
vim.opt.cursorcolumn   = true
vim.opt.termguicolors  = true
vim.opt.relativenumber = true

-- non-printable characters
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("tab:·")
vim.opt.listchars:append("trail:ﰣ")
vim.opt.listchars:append("space:·")
vim.opt.listchars:append("extends:")
vim.opt.listchars:append("precedes:")
