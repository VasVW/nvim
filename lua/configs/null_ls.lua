local null_ls = require "null-ls"

local sources = {
  null_ls.builtins.formatting.black,
  null_ls.diagnostics.ruff,
  null_ls.builtins.formatting.stylya,
  null_ls.builtins.formatting.prettier,
  null_ls.builtins.formatting.yamlfix,
  null_ls.builtins.diagnostics.ansiblelint,
}

null_ls.setup {
  sources = sources
}
