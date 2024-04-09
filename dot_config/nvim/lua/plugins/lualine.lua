-- vim syntax=lua
return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.options = {
        section_separators = { right = "", left = "" },
        component_separators = { right = "", left = "" },
      }
    end,
  },
}
