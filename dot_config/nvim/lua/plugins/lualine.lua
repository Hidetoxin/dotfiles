-- vim: syntax=lua

return {

  -- ADD STATUS LINE
  {
    "nvim-lualine/lualine.nvim",
    event        = "VeryLazy",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    opts = {
      options = {
        theme                = "gruvbox",
        icons_enabled        = true,
        section_separators   = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },
    },
  },

}
