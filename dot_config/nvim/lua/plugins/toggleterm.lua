-- vim: syntax=lua

return {

  -- FLOATING TERMINAL
  {

    "akinsho/toggleterm.nvim",
    config = function()
      require("which-key").setup({
        size            = 20,
        border          = "double",
        direction       = "float",
        hide_numbers    = true,
        open_mapping    = [[<c-\>]],
        close_on_exit   = true,
        start_in_insert = true,
    })
    end
  },

}
