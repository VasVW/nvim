return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

    {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {ensure_installed = require("configs.lspconfig"),
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require "configs.dap"
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local treesitter_config = require("configs.treesitter")
    require("nvim-treesitter.configs").setup(treesitter_config)
    end,
  },
}
