-- CONFIGURATION
local lualine = require('lualine')
lualine.setup({
  options = {
    theme = 'gruvbox-material',
    globalstatus         = false,
    icons_enabled        = true,
    disabled_filetypes   = {},
    section_separators   = {right = '', left = ''},
    component_separators = {right = '', left = ''},
    always_divide_middle = true,
  },
  tabline = {},
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  extensions = {},
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
})
