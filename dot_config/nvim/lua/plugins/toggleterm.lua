-- vim syntax=lua

return {
  {
    "akinsho/toggleterm.nvim",
    opts = {
      size = 20,
      border = "double",
      direction = "float",
      hide_numbers = true,
      open_mapping = [[<c-\>]],
      close_on_exit = true,
      start_in_insert = true,
    },
  },
}
