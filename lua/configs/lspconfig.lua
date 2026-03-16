require("nvchad.configs.lspconfig").defaults()

local servers = {
	"yamlls",
	"gitlab_ci_ls",
	"gopls",
	"ansiblels",
}

vim.lsp.config["yamlls"] = {
	filetypes = { "yaml" },
}

vim.lsp.config["ansiblels"] = {
	filetypes = { "yaml.ansible" },
}

vim.lsp.enable(servers)
