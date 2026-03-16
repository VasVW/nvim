require("nvchad.mappings")

local map = vim.keymap.set

-- -------------------------------------------------------------------------
-- Standard / General Mappings
-- -------------------------------------------------------------------------
map("v", "<leader>v", "<Cmd>vsplit<CR>", { desc = "Vertical split" })

-- -------------------------------------------------------------------------
-- Plugin Mappings
-- -------------------------------------------------------------------------

-- fold-cycle.nvim
map("n", "<leader><Tab>", function()
  require("fold-cycle").open()
end, { desc = "Open fold cycle" })

map("n", "<leader><S-Tab>", function()
  require("fold-cycle").close()
end, { desc = "Close fold cycle" })

-- outline.nvim
map("n", "<leader>do", "<cmd>Outline<CR>", { desc = "Toggle Outline" })
