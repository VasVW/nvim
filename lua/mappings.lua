require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map('n', '<leader>cd', '<Cmd>NvimTreeChangeRootToNode<CR>', { desc = "cd into folder in nvimtree" })
map('n', '<leader>up', '<Cmd>NvimTreeChangeRootToParent<CR>', { desc = "cd .. in nvimtree" })
