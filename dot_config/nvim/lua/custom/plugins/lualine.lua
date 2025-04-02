return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    opts = function(_, opts)
      opts.options = {
        theme = 'gruvbox_dark',
        icons_enabled = vim.g.have_nerd_font,
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
      }
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
