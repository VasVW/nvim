local null_ls = require("null-ls")

-- This line is critical! It registers all extras like ruff with null-ls
require("none-ls-extras").setup()

-- Now these will work properly
local ruff_formatting = require("none-ls.formatting.ruff")
local ruff_diagnostics = require("none-ls.diagnostics.ruff")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  debug = true,
  sources = {
    formatting.stylua,
    formatting.prettier,
    formatting.yamlfix,
    diagnostics.ansiblelint,

    ruff_diagnostics,
    ruff_formatting,
  },

  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      -- Create the autocmd group before clearing
      local group = vim.api.nvim_create_augroup("LspFormatting", { clear = true })      
      vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })

      vim.api.nvim_create_autocmd("BufWritePre", {
        group = group,  -- Use the created group
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
      })
    end
  end,
})



