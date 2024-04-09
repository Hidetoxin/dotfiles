-- vim syntax=lua

-- BIND LEADER KEY
vim.g.mapleader = "," -- need to be set-up before LazyVim
vim.g.maplocalleader = ","

-- LOAD LAZYVIM
require("config.lazy") -- bootstrap lazy.nvim, LazyVim and your plugins
