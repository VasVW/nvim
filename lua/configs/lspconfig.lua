require("nvchad.configs.lspconfig").defaults()

local servers = {
	"black",
	"html",
	"ruff",
	"cssls",
	"ansiblels",
	"dockerls",
	"docker_compose_language_service",
	"gopls",
}

vim.lsp.enable(servers)
