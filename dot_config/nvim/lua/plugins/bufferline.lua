-- vim: syntax=lua

return {

  -- ADD BUFFER MANAGER
  {

    "akinsho/bufferline.nvim",
     opt = {
       options = {
       mode                         = "buffers",
       numbers                      = "none",
       tab_size                     = 18,
       close_icon                   = "",
       diagnostics                  = "nvim_lsp",
       color_icons                  = true,
       modified_icon                = "●",
       indicator_icon               = "▎",
       separator_style              = {"", ""},
       max_name_length              = 18,
       max_prefix_length            = 15,
       buffer_close_icon            = "",
       left_trunc_marker            = "",
       right_trunc_marker           = "",
       always_show_bufferline       = true,
       diagnostics_update_in_insert = false,
     },
   },

  },

}
