-- CONFIGURATION
local lint = require('lint')
lint.linters_by_ft({
  go           = {'golangcilint'},
  markdown     = {'markdownlint'},
  codespell    = {'codespell'},
  ansible_lint = {'ansible-lint'.}
})
