-- vim: syntax=lua

return {

    -- HIGHLIGHT, EDIT, AND NAVIGATE CODE
    "nvim-treesitter/nvim-treesitter",
    cond = function()
      return vim.fn.executable "make" == 1
    end,
    build        = "make",
    dependencies = {
      "jvgrootveld/telescope-zoxide",
      "xiyaowong/telescope-emoji.nvim",
      "nvim-telescope/telescope-ghq.nvim",
      "nvim-telescope/telescope-fzf-native.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
      -- "nvim-treesitter/nvim-treesitter-textobject",
    },
    opts         = {
      rainbow         = {
         enable         = true,
         extended_mode  = true,
         max_file_lines = nil,
       },
       highlight       = {
         enable  = true,
         disable = {
           "yaml",
         },
       },
      ensure_installed = {
        "go",
        "hcl",
        "lua",
        "tsx",
        "bash",
        "help",
        "html",
        "make",
        "json",
        "yaml",
        "query",
        "latex",
        "regex",
        "gomod",
        "gowork",
        "python",
        "markdown",
        "dockerfile",
        "typescript",
        "javascript",
        "markdown_inline",
      },
    },

  }
