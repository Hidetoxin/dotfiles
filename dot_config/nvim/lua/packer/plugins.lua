  -- COMPLETION PLUGIN
  use {'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'hrsh7th/cmp-buffer',

  -- OVERRIDE FILE EXTENSIONS
  use {'nathom/filetype.nvim'}

  -- AUTO COMPLETITION WITH LSP
  use {'neovim/nvim-lspconfig'}

  -- DEBUGGER
  use {'mfussenegger/nvim-dap'}

  -- TERRAFORM TEMPLATE SUPPORT
  use {'hashivim/vim-terraform', ft={'terraform'}}

  -- LINT CODE
  use {'mfussenegger/nvim-lint'}

  -- ANSIBLE TEMPLATE SUPPORT
  use {'pearofducks/ansible-vim', ft={'yml', 'yaml'}}

  -- QUICKLY JUMP TO TEXT OBJECTS
  use {'ggandor/lightspeed.nvim'}
