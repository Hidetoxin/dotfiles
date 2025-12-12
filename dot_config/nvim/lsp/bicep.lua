---@type vim.lsp.Config
return {
  cmd = { 'Bicep.LangServer' },
  filetypes = { 'bicep', 'bicep-params' },
  root_markers = { '.git' },
  init_options = {},
}

-- vim: ts=2 sts=2 sw=2 et
