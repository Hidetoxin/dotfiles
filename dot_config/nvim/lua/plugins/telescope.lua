-- vim: syntax=lua

return {

    -- FUZZY FINDER
    "nvim-telescope/telescope.nvim",
    version      = "*",
    --config       = function()
    --  telescope.load_extension("ghq")
    --  telescope.load_extension("ghq")
    --  telescope.load_extension("emoji")
    --  telescope.load_extension("zoxide")
    --  telescope.load_extension("file_browser")
    --end,
    dependencies = { "nvim-lua/plenary.nvim" },
}
