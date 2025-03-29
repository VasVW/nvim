-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}
M.mason = {
  pkgs = {
    --python lsp/lint/formatter
    "basedpyright",
    "ruff",
    "black",
    "debugpy",
    --ansible lsp/lint/formatter
    "ansible-language-server",
    "ansible-lint",
    "yamlfix",
    --css/html lsps
    "css-lsp",
    "html-lsp",
    "prettier",
    --lua lsp/lint/formatter
    "stylua",
    "lua-language-server",
  },
}
-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}

return M
