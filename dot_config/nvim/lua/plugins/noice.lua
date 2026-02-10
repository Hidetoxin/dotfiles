-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    -- Add any options in here
  },
  dependencies = {
    -- If you `LazyLoad` any plugin below, make sure to add proper `module = ...` entries
    'muniftanjim/nui.nvim',
    -- OPTIONAL:
    -- `nvim-notify` is only needed, if you want to use the notification view.
    -- If not available, we use `mini` as the fallback
    'rcarriga/nvim-notify',
  },
}

-- vim: ts=2 sts=2 sw=2 et
