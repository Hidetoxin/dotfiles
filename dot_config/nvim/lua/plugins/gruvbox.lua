-- vim: syntax=lua

return {

  -- ADD GRUVBOX COLORSCHEME
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    opts = {
      style = "moon"
    },
  },

  -- CONFIGURE LAZYVIM TO LOAD GRUVBOX
  {
    "lazyvim/lazyvim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

}
