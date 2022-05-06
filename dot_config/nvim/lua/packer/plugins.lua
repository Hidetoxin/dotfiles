-- BOOTSTRAP PLUGIN MANAGER
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- START PLUGIN LOADING
return require('packer').startup({function(use)

  -- VSCODE LIKE MINIMAP
  use {'wfxr/minimap.vim'}

  -- GREETER
  use {'goolord/alpha-nvim'}

  -- DISPLAYS A POPUP WITH KEY BINDINGS
  use {'folke/which-key.nvim'}

  -- PREVIEW MARKDOWN FILES
  use {'ellisonleao/glow.nvim'}

  -- TEXT COMMENTER
  use {'numtostr/comment.nvim'}

  -- STATUS LINE AT THE BOTTOM
  use { 'hoob3rt/lualine.nvim',
    requires = {
      'sainnhe/gruvbox-material',
      'kyazdani42/nvim-web-devicons',
    }
  }

  -- USE A GIT TUI
  use {'kdheepak/lazygit.nvim', branch='main'}

  -- NVIM PLUGIN MANAGER
  use {'wbthomason/packer.nvim'}

  -- SHOW GIT SIGNS
  use {'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
  }

  -- TOGGLE TERM POPUP INSIDE NVIM
  use {'akinsho/toggleterm.nvim', branch='main'}

  -- SHOW BUFFER TABS
  use {'akinsho/bufferline.nvim', branch='main'}

  -- QUICKLY JUMP TO TEXT OBJECTS
  use {'ggandor/lightspeed.nvim'}

  -- OPTIMIZER
  use {'lewis6991/impatient.nvim'}

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

  -- -- GO LANGUAGE SUPPORT
  -- use {
    -- 'fatih/vim-go',
    -- ft = {'go'},
  -- }

  -- -- PLUGIN FOR USING EMAIL
  -- use {
    -- 'soywod/himalaya',
    -- rtp = 'vim',
  -- }

  -- -- COMPLETION PLUGIN
  -- use {
    -- 'hrsh7th/nvim-cmp',
    -- config = function()
      -- require('cmp').setup({
        -- window = {
        -- },
        -- sources = {
          -- { name = "path" },
          -- { name = "buffer" , keyword_length = 5},
          -- { name = "nvim_lsp"},
        -- },
        -- mapping = require('cmp').mapping.preset.insert({
          -- ['<C-b>'] = require('cmp').mapping.scroll_docs(-4),
          -- ['<C-f>'] = require('cmp').mapping.scroll_docs(4),
          -- ['<C-Space>'] = require('cmp').mapping.complete(),
          -- ['<C-e>'] = require('cmp').mapping.abort(),
          -- ['<CR>'] = require('cmp').mapping.confirm({ select = true }),
        -- }),
        -- formatting = {
         -- format = require('lspkind').cmp_format {
          -- with_text = true,
          -- menu = {
             -- path     = "[path]",
             -- buffer   = "[buf]",
             -- nvim_lsp = "[LSP]",
            -- },
         -- },
        -- },
      -- })
    -- end,
    -- requires = {
      -- 'hrsh7th/nvim-cmp',
      -- 'hrsh7th/cmp-path',
      -- 'hrsh7th/cmp-vsnip',
      -- 'hrsh7th/vim-vsnip',
      -- 'hrsh7th/cmp-buffer',
      -- 'hrsh7th/cmp-cmdline',
      -- 'hrsh7th/cmp-nvim-lsp',
      -- 'onsails/lspkind.nvim',
    -- },
  -- }

  -- -- TOML TEMPLATE SUPPORT
  -- use {
    -- 'cespare/vim-toml',
    -- ft = {'toml'},
  -- }

  -- -- WRAPPER FOR SOME CLI COMMANDS
  -- use {
    -- 'tpope/vim-eunuch',
  -- }
 
  -- -- HCL TEMPLATE SUPPORT
  -- use {
    -- 'jvirtanen/vim-hcl',
    -- ft    = {'hcl'},
    -- branch = 'main',
 
  -- -- LSP PROGRESS BAR
  -- use {
    -- 'j-hui/fidget.nvim',
    -- config = function()
      -- require('twilight').setup()
    -- end,
  -- }
 -- }

  -- use {
    -- 'folke/twilight.nvim',
    -- config = function()
      -- require('twilight').setup()
    -- end,
  -- }

  -- -- LSP TAG VIEWER
  -- use {
    -- 'liuchengxu/vista.vim',
  -- }

    -- use {
        -- 'nvim-treesitter/nvim-treesitter',
        -- run = ':TSUpdate'
    -- }

  -- -- OVERRIDE FILE EXTENSIONS
  -- use {
    -- 'nathom/filetype.nvim',
    -- config = function()
      -- require('filetype').setup {
        -- overrides = {
            -- extensions = {
              -- tf      = 'terraform',
              -- tfvars  = 'terraform',
              -- tfstate = 'json',
            -- },
        -- },
      -- }
    -- end,
-- }

  -- -- SMOOTH SCROLLING
  -- use {
    -- 'karb94/neoscroll.nvim',
    -- config = function()
      -- require('neoscroll').setup({
        -- stop_eof    = true,
        -- hide_cursor = false,
      -- })
    -- end,
  -- }

  -- -- AUTO COMPLETITION WITH LSP
  -- use {
    -- 'neovim/nvim-lspconfig',
    -- config = function()
      -- require('lspconfig').ltex.setup{}
      -- require('lspconfig').gopls.setup{}
      -- require('lspconfig').bashls.setup{}
      -- require('lspconfig').yamlls.setup{}
      -- require('lspconfig').tflint.setup{}
      -- require('lspconfig').pyright.setup{}
      -- require('lspconfig').dockerls.setup{}
      -- require('lspconfig').ansiblels.setup{}
      -- require('lspconfig').terraformls.setup{}
    -- end,
  -- }

  -- -- TERRAFORM TEMPLATE SUPPORT
  -- use {
    -- 'hashivim/vim-terraform',
    -- ft = {'tf', 'tfvars', 'tfstate'},
  -- }

  -- -- CYCLE THROUGH DIFFS
  -- use {
    -- 'sindrets/diffview.nvim',
  -- }

  -- -- ANSIBLE TEMPLATE SUPPORT
  -- use {
    -- 'pearofducks/ansible-vim',
    -- ft = {'yml', 'yaml'},
  -- }

  -- -- QUICKLY COMMENT LINES
  -- use {
    -- 'preservim/nerdcommenter',
  -- }

  -- -- SHOW TREE FILE NAVIGATOR
  -- use {
    -- 'kyazdani42/nvim-tree.lua',
    -- config   = function()
      -- require'nvim-tree'.setup({
        -- view = {
          -- side   = 'left',
          -- width  = 30,
          -- height = 30,
        -- },
        -- open_on_tab   = true,
        -- open_on_setup = true,
        -- disable_netrw = true,
      -- })
    -- end,
    -- requires = { 'kyazdani42/nvim-web-devicons' },
  -- }

  -- -- HIGHLIGHT AND TRACK TASK COMMENTS
  -- use {
    -- 'folke/todo-comments.nvim',
    -- config   = function()
      -- require('todo-comments').setup()
    -- end,
    -- requires = 'nvim-lua/plenary.nvim',
  -- }

  -- -- HIGHLIGHT AND COLOR INDENT
  -- use {
    -- 'lukas-reineke/indent-blankline.nvim',
    -- config = function()
      -- require('indent_blankline').setup({
        -- char                 = '',
        -- show_end_of_line     = true,
        -- bufftype_exclude     = {'terminal'},
        -- show_current_context = true,
      -- })
    -- end,
  -- }

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
