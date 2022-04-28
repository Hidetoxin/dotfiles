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

  -- COMPLETION PLUGIN
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require('cmp').setup({
        window = {
        },
        sources = {
          { name = "path" },
          { name = "buffer" , keyword_length = 5},
          { name = "nvim_lsp"},
        },
        mapping = require('cmp').mapping.preset.insert({
          ['<C-b>'] = require('cmp').mapping.scroll_docs(-4),
          ['<C-f>'] = require('cmp').mapping.scroll_docs(4),
          ['<C-Space>'] = require('cmp').mapping.complete(),
          ['<C-e>'] = require('cmp').mapping.abort(),
          ['<CR>'] = require('cmp').mapping.confirm({ select = true }),
        }),
        formatting = {
         format = require('lspkind').cmp_format {
          with_text = true,
          menu = {
             path     = "[path]",
             buffer   = "[buf]",
             nvim_lsp = "[LSP]",
            },
         },
        },
      })
    end,
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
    ft    = {'hcl'},
    branch = 'main',
 
  -- LSP PROGRESS BAR
  use {
    'j-hui/fidget.nvim',
    config = function()
      require('twilight').setup()
    end,
  }
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

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

  -- OVERRIDE FILE EXTENSIONS
  use {
    'nathom/filetype.nvim',
    config = function()
      require('filetype').setup {
        overrides = {
            extensions = {
              tf      = 'terraform',
              tfvars  = 'terraform',
              tfstate = 'json',
            },
        },
      }
    end,
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
    branch = 'main',
  }

  -- PREVIEW MARKDOWN FILES
  use {
    'ellisonleao/glow.nvim',
  }

  -- AUTO COMPLETITION WITH LSP
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').ltex.setup{}
      require('lspconfig').gopls.setup{}
      require('lspconfig').bashls.setup{}
      require('lspconfig').yamlls.setup{}
      require('lspconfig').tflint.setup{}
      require('lspconfig').pyright.setup{}
      require('lspconfig').dockerls.setup{}
      require('lspconfig').ansiblels.setup{}
      require('lspconfig').terraformls.setup{}
    end,
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

  -- SHOW BUFFER TABS
  use {
    'akinsho/bufferline.nvim',
    branch   = 'main',
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
    branch = 'main',
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
        enable_persistent_history = true,
      })
    end,
    requires = {
      {'nvim-telescope/telescope-ghq.nvim'},
      {'tami5/sqlite.lua', module = 'sqlite'},
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

  -- VIM STARTUP TIME
  use {
    'tweekmonster/startuptime.vim',
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
      require('telescope').load_extension('file_browser')
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

  -- FUZZY FILE BROWSER
  use {
    'nvim-telescope/telescope-file-browser.nvim',
  }

  -- PREVIEW IMAGES
  -- use {'edluffy/hologram.nvim'}

  -- SHOW FUNCTION SIGNATURE
  -- use {
    -- 'ray-x/lsp_signature.nvim',
  -- }
 
  -- PREVIEW LSP DEFINITION
  -- use {
    -- 'rmagatti/goto-preview',
    -- config = function()
      -- require('goto-preview').setup({
        -- width = 120; -- Width of the floating window
        -- height = 15; -- Height of the floating window
        -- border = {"↖", "─" ,"┐", "│", "┘", "─", "└", "│"}; -- Border characters of the floating window
        -- default_mappings = false; -- Bind default mappings
        -- debug = false; -- Print debug information
        -- opacity = nil; -- 0-100 opacity level of the floating window where 100 is fully transparent.
        -- post_open_hook = nil,
      -- })
    -- end,
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
