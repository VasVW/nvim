local options = {
	formatters_by_ft = {
		python = { "black" },
		lua = { "stylua" },
		go = { "gopls" },
		-- css = { "prettier" },
		-- html = { "prettier" },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options
