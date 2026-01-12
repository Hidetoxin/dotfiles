return {
  {
    'folke/snacks.nvim',
    ---@type snacks.Config
    lazy = false,
    priority = 1000,
    opts = {
      gh = {
        -- your gh configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        enabled = true,
      },
      picker = {
        sources = {
          gh_issue = {
            -- your gh_issue picker configuration comes here
            -- or leave it empty to use the default settings
          },
          gh_pr = {
            -- your gh_pr picker configuration comes here
            -- or leave it empty to use the default settings
          }
        }
      },
    },
    keys = {

      -- vim.keymap.set("n", "<leader>gi", function() require("snacks").picker("gh_issues", { query = "is:open assignee:@me" }) end, { desc = "GitHub Issues assigned to me" })
      -- Keybindings for the `gh` plugin
      {
        '<leader>gi',
        function()
          Snacks.picker.gh_issue({
            state = 'open',
            assignee = '@me',
          })
        end,
        desc = 'GitHub Issues (open)'
      },
      {
        '<leader>gI',
        function()
          Snacks.picker.gh_issue({
            state = 'all'
          })
        end,
        desc = 'GitHub Issues (all)'
      },
      {
        '<leader>gp',
        function()
          Snacks.picker.gh_pr({
            state = 'open',
            author = '@me',
          })
        end,
        desc = 'GitHub Pull Requests (open)'
      },
      {
        '<leader>gr',
        function()
          Snacks.picker.gh_pr({
            search = 'is:open review-requested:@me -is:draft',
          })
        end,
        desc = 'GitHub Pull Requests (review)'
      },
      {
        '<leader>gP',
        function()
          Snacks.picker.gh_pr({
            state = 'all',
          })
        end,
        desc = 'GitHub Pull Requests (all)'
      },
    },

  },
}

-- vim: ts=2 sts=2 sw=2 et
