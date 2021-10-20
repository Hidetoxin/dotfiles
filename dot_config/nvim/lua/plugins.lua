-- BOOTSTRAP PLUGIN MANAGER
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- START PLUGIN LOADING
return require('packer').startup(function(use)

  -- soywod/himalaya
  -- hrsh7th/nvim-cmp
  -- glacambre/firenvim
  -- folke/twilight.nvim
  -- p00f/nvim-ts-rainbow
  -- haya14busa/incsearch.vim
  -- haya14busa/incsearch-easymotion.vim

  -- SHOW BUFFER TABS
  use {
    'akinsho/bufferline.nvim',
    config   = function()
      require('bufferline').setup {
        options = {
          --diagnostics                  = 'nvim_lsp',
          close_icon                   = '',
          modified_icon                = '●',
          indicator_icon               = '▎',
          separator_style              = 'slant',
          buffer_close_icon            = '',
          left_trunc_marker            = '',
          right_trunc_marker           = '',
          diagnostics_update_in_insert = false,
        }
      }
    end,
  }

  -- WRAPPER FOR SOME CLI COMMANDS
  use {
    'tpope/vim-eunuch',
  }

  -- WRAPPER FOR SOME GIT COMMANDS
  use {
    'tpope/vim-fugitive',
  }

  -- SURROUND TEXT OBJECTS
  use {
    'tpope/vim-surround',
  }

  -- LSP TAG VIEWER
  use {
    'liuchengxu/vista.vim',
  }

  -- SMOOTH SCROLLING
  use {
    'karb94/neoscroll.nvim',
  }

  -- VSCODE LIKE MINIMAP
  use {
    'wfxr/minimap.vim',
  }

  -- QUICKLY COMMENT LINES
  use {
    'preservim/nerdcommenter',
  }

  -- QUICKLY TRAVERSE BUFFERS
  use {
    'easymotion/vim-easymotion',
  }

  -- HIGHLIGHT AND COLOR INDENT
  use {
    'lukas-reineke/indent-blankline.nvim',
  }

  -- HIGHLIGHT YANK
  use {
    'machakann/vim-highlightedyank',
  }

  -- START PAGE
  use {
    'mhinz/vim-startify',
  }

  -- VSCODE LIKE GIT LENS
  use {
    'f-person/git-blame.nvim',
  }

  -- SHOW RELATIVE NUMBERS
  use {
    'myusuf3/numbers.vim',
  }

  -- DIM INACTIVE WINDOWS
  use {
    'sunjon/shade.nvim',
    --config   = function()
    --  require'shade'.setup {
    --    keys            = {
    --      toggle          = '<Leader>s',
    --      brightness_up   = '<C-Up>',
    --      brightness_down = '<C-Down>',
    --    },
    --    opacity_step    = 1,
    --    overlay_opacity = 50,
    --  }
    --end,
  }

  -- TOGGLE TERM POPUP INSIDE NVIM
  use {
    'akinsho/toggleterm.nvim',
  }
--
--  use {
--    'ray-x/lsp_signature.nvim',
--  }
--
--  use {  -- cycle through diffs
--    'sindrets/diffview.nvim'
--  }

  -- DISPLAYS A POPUP WITH KEY BINDINGS
  use {
    'folke/which-key.nvim',
    config   = function()
      require('which-key').setup()
    end,
  }

  -- NVIM PLUGIN MANAGER
  use {
    'wbthomason/packer.nvim'
  }

  -- SHOW GIT SIGNS
  use {
    'lewis6991/gitsigns.nvim',
    config   = function()
      require('gitsigns').setup()
    end,
    requires = { 'nvim-lua/plenary.nvim' },
  }

  -- STATUS LINE AT THE BOTTOM
  use {
    'hoob3rt/lualine.nvim',
    config   = function()
      require('lualine').setup {
        options = {
          theme                = 'gruvbox_material',
          icons_enabled        = true,
          section_separators   = {'', ''},
          component_separators = {'', ''},
        }
      }
    end,
    requires = {
      'sainnhe/gruvbox-material',
      'kyazdani42/nvim-web-devicons',
      opt = true
    },
  }

  use {
    'kyazdani42/nvim-tree.lua',
    config   = function()
      require'nvim-tree'.setup {}
    end,
    requires = { 'kyazdani42/nvim-web-devicons' },
  }


--  use { -- highlight and track todo comments
--    'folke/todo-comments.nvim',
--    config   = function()
--      require('todo-comments').setup()
--    end,
--    requires = 'nvim-lua/plenary.nvim'
--  }

  -- FILE FUZZY FINDER
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

--  use {  -- clipboard manager
--    'acksld/nvim-neoclip.lua',
--    config   = function()
--      require('neoclip').setup()
--    end,
--    requires = {'tami5/sqlite.lua', module = 'sqlite'}
--  }

  -- 
  use {
    'fatih/vim-go',
    ft = {'go'},
  }

  -- 
  use {
    'cespare/vim-toml',
    ft = {'toml'},
  }

  -- 
  use {
    'jvirtanen/vim-hcl',
    ft = {'hcl'},
  }

  -- 
  use {
    'hashivim/vim-terraform',
    ft = {'tf', 'tfvars', 'tfstate'},
  }

  -- 
  use {
    'pearofducks/ansible-vim',
    ft = {'yml', 'yaml'},
  }

  -- 
  use {
    'lervag/vimtex',
    ft = {'tex', 'bib', 'latex'},
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
