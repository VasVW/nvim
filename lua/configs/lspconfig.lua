require("nvchad.configs.lspconfig").defaults()

local servers = { "black", "html", "ruff", "cssls", "ansiblels" }
vim.lsp.enable(servers)
