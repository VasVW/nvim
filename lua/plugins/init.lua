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
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvimtools/none-ls-extras.nvim"
    },
    config = function()
      require "configs.none_ls"
    end,
  },
  {
    "nvimtools/none-ls-extras.nvim",
    config = function()
      require("none-ls-extras").setup()
    end
  }
}
