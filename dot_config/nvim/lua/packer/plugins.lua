-- BOOTSTRAP PLUGIN MANAGER
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- START PLUGIN LOADING
return require('packer').startup({function(use)

  -- PLUGIN FOR USING EMAIL
  use {'soywod/himalaya', rtp='vim'}

  -- COMPLETION PLUGIN
  use {'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lsp',
      'onsails/lspkind.nvim',
    },
  }

  -- VSCODE LIKE MINIMAP
  use {'wfxr/minimap.vim'}

  -- GH WRAPPER
  use {'ldelossa/gh.nvim'}

  -- GREETER
  use {'goolord/alpha-nvim'}

  -- OVERRIDE FILE EXTENSIONS
  use {'nathom/filetype.nvim'}

  -- LSP TAG VIEWER
  use {'liuchengxu/vista.vim'}

  -- DISPLAYS A POPUP WITH KEY BINDINGS
  use {'folke/which-key.nvim'}

  -- PREVIEW MARKDOWN FILES
  use {'ellisonleao/glow.nvim'}

  -- TEXT COMMENTER
  use {'numtostr/comment.nvim'}

  -- AUTO COMPLETITION WITH LSP
  use {'neovim/nvim-lspconfig'}

  -- PREVIEW IMAGES
  use {'edluffy/hologram.nvim'}

  -- DEBUGGER
  use {'mfussenegger/nvim-dap'}

  -- STATUS LINE AT THE BOTTOM
  use { 'hoob3rt/lualine.nvim',
    requires = {
      'sainnhe/gruvbox-material',
      'kyazdani42/nvim-web-devicons',
    }
  }

  -- USE A GIT TUI
  use {'kdheepak/lazygit.nvim', branch='main'}

  -- TERRAFORM TEMPLATE SUPPORT
  use {'hashivim/vim-terraform', ft={'terraform'}}

  -- NVIM PLUGIN MANAGER
  use {'wbthomason/packer.nvim'}

  -- LINT CODE
  use {'mfussenegger/nvim-lint'}

  -- SHOW GIT SIGNS
  use {'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
  }

  -- ANSIBLE TEMPLATE SUPPORT
  use {'pearofducks/ansible-vim', ft={'yml', 'yaml'}}

  -- TOGGLE TERM POPUP INSIDE NVIM
  use {'akinsho/toggleterm.nvim', branch='main'}

  -- SHOW BUFFER TABS
  use {'akinsho/bufferline.nvim', branch='main'}

  -- QUICKLY JUMP TO TEXT OBJECTS
  use {'ggandor/lightspeed.nvim'}

  -- OPTIMIZER
  use {'lewis6991/impatient.nvim'}

  -- HIGHLIGHT AND TRACK TASK COMMENTS
  use {'folke/todo-comments.nvim',
    requires = {'nvim-lua/plenary.nvim'},
  }

  -- SHOW TREE FILE NAVIGATOR
  use {'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons'},
  }

  -- HIGHLIGHT YANK
  use {'machakann/vim-highlightedyank'}

  -- FILE FUZZY FINDER
  use {'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'jvgrootveld/telescope-zoxide'},
      {'xiyaowong/telescope-emoji.nvim'},
      {'nvim-treesitter/nvim-treesitter'},
      {'nvim-telescope/telescope-ghq.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
      {'nvim-telescope/telescope-file-browser.nvim'},
    }
  }

  -- BETTER SYNTAX HIGHLIGHT
  use {'nvim-treesitter/nvim-treesitter',
    run      = ':TSUpdate',
    requires = {'p00f/nvim-ts-rainbow'}
  }

  -- HIGHLIGHT AND COLOR INDENT
  use {'lukas-reineke/indent-blankline.nvim'}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})
