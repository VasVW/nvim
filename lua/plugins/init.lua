-- File: ~/.config/nvim/lua/plugins/init.lua

return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		opts = require("configs.conform"),
	},

	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "NvChad/NvChad" },
		build = ":TSUpdate",
		config = function()
			local treesitter_config = require("configs.treesitter")
			require("nvim-treesitter.configs").setup(treesitter_config)
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "NvChad/NvChad" },
		config = require("configs.nvimtree"),
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},
	{

		"zbirenbaum/copilot.lua",
		lazy = false,
		config = function()
			require("configs.copilot")
		end,
	},

	{
		"LuxVim/nvim-luxmotion",
		config = function()
			require("luxmotion").setup({
				cursor = {
					duration = 250,
					easing = "ease-out",
					enabled = true,
				},
				scroll = {
					duration = 400,
					easing = "ease-out",
					enabled = true,
				},
				performance = { enabled = false },
				keymaps = {
					cursor = true,
					scroll = true,
				},
			})
		end,
	},

	{
		"rachartier/tiny-glimmer.nvim",
		event = "VeryLazy",
		config = function()
			require("tiny-glimmer").setup()
		end,
	},
}
