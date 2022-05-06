-- CONFIGURATION
local whichkey = require('which-key')
whichkey.setup({
  icons              = {
    group      = "+", -- symbol prepended to a group
    separator  = "➜", -- symbol used between a key and it's label
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
  },
  hidden             = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
  layout             = {
    width   = { min = 20, max = 50 }, -- min and max width of the columns
    height  = { min = 4, max = 25 }, -- min and max height of the columns
    align   = "left", -- align columns left, center or right
    spacing = 3, -- spacing between columns
  },
  window             = {
    border   = "none", -- none, single, double, shadow
    margin   = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding  = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0,
    position = "bottom", -- bottom, top
  },
  plugins            = {
    marks     = true, -- shows a list of your marks on ' and `
    spelling  = {
      enabled     = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    presets   = {
      z            = true, -- bindings for folds, spelling and others prefixed with z
      g            = true, -- bindings for prefixed with g
      nav          = true, -- misc bindings to work with windows
      motions      = true, -- adds help for motions
      windows      = true, -- default bindings on <c-w>
      operators    = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      text_objects = true, -- help for text objects triggered after entering an operator
    },
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
  },
  triggers           = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  operators          = { gc = "Comments" },
  show_help          = true, -- show help message on the command line when the popup is visible
  key_labels         = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  popup_mappings     = {
    scroll_up   = '<c-u>', -- binding to scroll up inside the popup
    scroll_down = '<c-d>', -- binding to scroll down inside the popup
  },
  ignore_missing     = false, -- enable this to hide mappings for which you didn't specify a label
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
})
