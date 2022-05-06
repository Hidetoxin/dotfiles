-- CONFIGURATION
local filetype = require('filetype')
filetype.config({
  overrides = {
    extensions = {
      tf      = 'terraform',
      tfvars  = 'terraform',
      tfstate = 'json',
    }
  },
})
