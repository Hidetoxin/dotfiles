-- BOOTSTRAP PLUGIN MANAGER
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- START PLUGIN LOADING
return require('packer').startup({function(use)

  -- GO LANGUAGE SUPPORT
  use {
    'fatih/vim-go',
    ft = {'go'},
  }

  -- PLUGIN FOR USING EMAIL
  use {
    'soywod/himalaya',
    rtp = 'vim',
  }

  -- TOML TEMPLATE SUPPORT
  use {
    'cespare/vim-toml',
    ft = {'toml'},
  }

  -- VSCODE LIKE MINIMAP
  use {
    'wfxr/minimap.vim',
  }

  -- WRAPPER FOR SOME CLI COMMANDS
  use {
    'tpope/vim-eunuch',
  }
 
  -- HCL TEMPLATE SUPPORT
  use {
    'jvirtanen/vim-hcl',
    ft = {'hcl'},
  }

  -- WRAPPER FOR SOME GIT COMMANDS
  use {
    'tpope/vim-fugitive',
  }

  -- SURROUND TEXT OBJECTS
  use {
    'tpope/vim-surround',
  }

  -- START PAGE
  use {
    'mhinz/vim-startify',
  }

  -- SHOW RELATIVE NUMBERS
  use {
    'myusuf3/numbers.vim',
  }

  use {
    'folke/twilight.nvim',
    config = function()
      require('twilight').setup()
    end,
  }

  -- DISPLAYS A POPUP WITH KEY BINDINGS
  use {
    'folke/which-key.nvim',
    config   = function()
      require('which-key').setup()
    end,
  }

  -- LSP TAG VIEWER
  use {
    'liuchengxu/vista.vim',
  }

  -- STATUS LINE AT THE BOTTOM
  use {
    'hoob3rt/lualine.nvim',
    config = function()
      require('lualine').setup({
        options = {
          theme                = 'gruvbox-material',
          icons_enabled        = true,
          section_separators   = {right = '', left = ''},
          component_separators = {right = '', left = ''},
        }
      })
    end,
    requires = {
      'sainnhe/gruvbox-material',
      'kyazdani42/nvim-web-devicons',
      opt = true
    },
  }

  -- NVIM PLUGIN MANAGER
  use {
    'wbthomason/packer.nvim',
  }

  -- SMOOTH SCROLLING
  use {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup({
        stop_eof    = true,
        hide_cursor = false,
      })
    end,
  }

  -- USE A GIT TUI
  use {
    'kdheepak/lazygit.nvim',
  }

  -- PREVIEW MARKDOWN FILES
  use {
    'ellisonleao/glow.nvim',
  }

  -- TERRAFORM TEMPLATE SUPPORT
  use {
    'hashivim/vim-terraform',
    ft = {'tf', 'tfvars', 'tfstate'},
  }

  -- CYCLE THROUGH DIFFS
  use {
    'sindrets/diffview.nvim',
  }

  -- USE NEOVIM IN WEB BROWSERS
  use { 'glacambre/firenvim',
    run = function()
      vim.fn['firenvim#install'](0)
    end,
  }

  -- SHOW BUFFER TABS
  use {
    'akinsho/bufferline.nvim',
    config   = function()
      require('bufferline').setup({
        options = {
          numbers                      = 'none',
          diagnostics                  = 'nvim_lsp',
          close_icon                   = '',
          modified_icon                = '●',
          indicator_icon               = '▎',
          separator_style              = {'', ''},
          buffer_close_icon            = '',
          left_trunc_marker            = '',
          right_trunc_marker           = '',
          diagnostics_update_in_insert = false,
        }
      })
    end,
  }

  -- ANSIBLE TEMPLATE SUPPORT
  use {
    'pearofducks/ansible-vim',
    ft = {'yml', 'yaml'},
  }

  -- QUICKLY COMMENT LINES
  use {
    'preservim/nerdcommenter',
  }

  -- VSCODE LIKE GIT LENS
  use {
    'f-person/git-blame.nvim',
  }

  -- SHOW GIT SIGNS
  use {
    'lewis6991/gitsigns.nvim',
    config   = function()
      require('gitsigns').setup()
    end,
    requires = {'nvim-lua/plenary.nvim'},
  }

  -- TOGGLE TERM POPUP INSIDE NVIM
  use {
    'akinsho/toggleterm.nvim',
    config = function()
      require('toggleterm').setup({
        size            = 20,
        border          = 'double',
        direction       = 'float',
        hide_numbers    = true,
        open_mapping    = [[<c-\>]],
        close_on_exit   = true,
        start_in_insert = true,
      })
    end,
  }

  -- MANAGE CLIPBOARD ON TELESCOPE
  use {
    'acksld/nvim-neoclip.lua',
    config = function()
      require('neoclip').setup({
        enable_persistant_history = true,
      })
    end,
    requires = {
      'tami5/sqlite.lua',
      module = 'sqlite'
    },
  }

  -- SHOW TREE FILE NAVIGATOR
  use {
    'kyazdani42/nvim-tree.lua',
    config   = function()
      require'nvim-tree'.setup({
        view = {
          side   = 'left',
          width  = 30,
          height = 30,
        },
        open_on_tab   = true,
        open_on_setup = true,
        disable_netrw = true,
      })
    end,
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- STABILIZE BUFFER CONTENT
  use {
    'luukvbaal/stabilize.nvim',
    config = function()
      require("stabilize").setup()
    end
  }

  -- HIGHLIGHT AND TRACK TASK COMMENTS
  use {
    'folke/todo-comments.nvim',
    config   = function()
      require('todo-comments').setup()
    end,
    requires = 'nvim-lua/plenary.nvim',
  }

  -- QUICKLY TRAVERSE BUFFERS
  use {
    'easymotion/vim-easymotion',
    requires = {
      'haya14busa/incsearch.vim',
      'haya14busa/incsearch-easymotion.vim',
    },
  }

  -- FILE FUZZY FINDER
  use {
    'nvim-telescope/telescope.nvim',
    config   = function()
      require('telescope').setup({
        pickers  = {
          find_files = {theme = 'dropdown'}
        },
        defaults = {
          layout_config = {width = 0.8}
        },
      })
      require('telescope').load_extension('ghq')
      require('telescope').load_extension('emoji')
      require('telescope').load_extension('zoxide')
      require('telescope').load_extension('neoclip')
    end,
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'jvgrootveld/telescope-zoxide'},
      {'xiyaowong/telescope-emoji.nvim'},
      {'nvim-treesitter/nvim-treesitter'},
      {'nvim-telescope/telescope-ghq.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
    },
  }

  -- HIGHLIGHT YANK
  use {
    'machakann/vim-highlightedyank',
  }

  -- HIGHLIGHT AND COLOR INDENT
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('indent_blankline').setup({
        char                 = '',
        show_end_of_line     = true,
        bufftype_exclude     = {'terminal'},
        show_current_context = true,
      })
    end,
  }

  -- AUTO COMPLETITION WITH LSP
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').gopls.setup{}
    end,
  }

  -- TODO add lang configs
  -- use {
    -- 'ray-x/lsp_signature.nvim',
  -- }

  -- use {
    -- 'williamboman/nvim-lsp-installer',
  -- }
  -- use {
    -- 'hrsh7th/nvim-cmp',
  -- }
 
  -- use {
    -- 'rmagatti/goto-preview',
    -- config = function()
      -- require('goto-preview').setup {}
    -- end
  -- }

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
