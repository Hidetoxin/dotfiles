-- Enable lsp
vim.lsp.enable({
  'bicep',
  'bashls',
  'lua_ls',
})

-- Filetype detection for `bicep` can be added via an autocmd:
vim.cmd [[ autocmd BufNewFile,BufRead *.bicep set filetype=bicep ]]
-- vim.cmd [[ autocmd BufNewFile,BufRead *.bicepparam set filetype=bicep ]]

-- vim: ts=2 sts=2 sw=2 et
