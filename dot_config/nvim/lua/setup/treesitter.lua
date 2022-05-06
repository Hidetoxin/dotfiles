-- CONFIGURATION
local treesitter = require('nvim-treesitter.configs')
treesitter.setup({
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
