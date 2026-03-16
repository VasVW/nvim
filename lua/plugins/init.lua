-- File: ~/.config/nvim/lua/plugins/init.lua

return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		opts = require("configs.conform"),
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
		"LuxVim/nvim-luxmotion",
		config = require("configs.nvim-luxmotion"),
	},
	{
		"rachartier/tiny-glimmer.nvim",
		event = "VeryLazy",
		config = function()
			require("tiny-glimmer").setup()
		end,
	},
	{
		"jghauser/fold-cycle.nvim",
		config = function()
			require("fold-cycle").setup()
		end,
	},
	{
		"hedyhli/outline.nvim",
		cmd = { "Outline", "OutlineOpen" },
		config = function()
			require("outline").setup()
		end,
	},
}
