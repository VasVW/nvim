local options = {
	formatters_by_ft = {
		python = { "black" },
		lua = { "stylua" },
		go = { "goimports" },
		yaml = { "prettier" },
		["yaml.ansible"] = { "ansible-lint" },
		-- css = { "prettier" },
		-- html = { "prettier" },
	},

	format_on_save = {
		timeout_ms = 5000,
		lsp_fallback = true,
	},
}

return options
