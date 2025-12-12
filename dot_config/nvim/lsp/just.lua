---@brief
---
--- https://github.com/terror/just-lsp
---
--- `just-lsp` is an LSP for just built on top of the tree-sitter-just parser.

---@type vim.lsp.Config
return {
  cmd = { 'just-lsp' },
  filetypes = { 'just' },
  root_markers = { '.git' },
}

-- vim: ts=2 sts=2 sw=2 et
