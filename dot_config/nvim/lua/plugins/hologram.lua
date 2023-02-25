-- vim: syntax=lua

return {

  -- IMAGE PREVIEWER
  {

    "edluffy/hologram.nvim",
    config = function()
      require("hologram").setup({
        auto_display = true,
    })
    end

  },

}
