-- CONFIGURATION
local treesitter = require('nvim-treesitter.configs')
treesitter.setup({
  rainbow          = {
    enable         = true,
    extended_mode  = true,
    max_file_lines = nil,
  },
  highlight        = {
    enable  = true,
    disable = {
      'yaml',
    },
  },
  ensure_installed = {
    'go',
    'lua',
    'hcl',
    'bash',
    'make',
    'latex',
    'regex',
    'gomod',
    'gowork',
    'python',
    'markdown',
    'dockerfile',
  },
})
