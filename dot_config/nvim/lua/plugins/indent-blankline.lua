-- vim: syntax=lua

return {

  -- ADD INDENTATION GUIDES
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup({
        char                 = "",
        show_end_of_line     = true,
        bufftype_exclude     = { "terminal" },
        show_current_context = true,
    })
    end
  },

}
