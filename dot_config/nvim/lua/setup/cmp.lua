-- CONFIGURATION
local cmp     = require('cmp')
local lspkind = require('lspkind')
cmp.setup({
  window     = {
    completion    = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping    = {
    ['<CR>']      = cmp.mapping.confirm({ select = true }),
    ['<C-b>']     = cmp.mapping.scroll_docs(-4),
    ['<C-f>']     = cmp.mapping.scroll_docs(4),
    ['<C-e>']     = cmp.mapping.abort(),
    ['<C-Space>'] = cmp.mapping.complete(),
  },
  sources    = {
    {name='path'},
    {name='buffer', keyword_length=5},
    {name='nvim_lsp'},
  },
  formatting = {
    format = lspkind.cmp_format({
      menu      = {
        path     = "[path]",
        buffer   = "[buf]",
        nvim_lsp = "[LSP]",
      },
      with_test = true,
    })
  },
})
