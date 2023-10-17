-- line numbers
vim.opt.number = true -- shows absolute line number on cursor line (when relative number is on)
vim.opt.relativenumber = true -- show relative line numbers

-- tabs & indentation
vim.opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
vim.opt.wrap = false -- disable line wrapping

-- search settings
vim.opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
vim.opt.ignorecase = true -- ignore case when searching

-- cursor line
vim.opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
vim.opt.background = "dark" -- colorschemes that can be light or dark will be made dark
vim.opt.signcolumn = "yes" -- show sign column so that text doesn't shift
vim.opt.termguicolors = true

-- backspace
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
vim.opt.swapfile = false

-- NON-PRINTABLE CHARACTERS
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("tab:·")
vim.opt.listchars:append("trail:ﰣ")
vim.opt.listchars:append("space:·")
vim.opt.listchars:append("extends:")
vim.opt.listchars:append("precedes:")
