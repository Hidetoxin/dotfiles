---@type vim.lsp.Config
return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = {
    '.git',
    'selene.yml',
    'stylua.toml',
    '.luarc.json',
    '.luacheckrc',
    'selene.toml',
    '.luarc.jsonc',
    '.stylua.toml',
  },
}

-- vim: ts=2 sts=2 sw=2 et
