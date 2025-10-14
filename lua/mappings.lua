require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("v",'<leader>v', '<Cmd>vsplit<CR>', { desc = "Vertical split" } )
map('n', '<leader>cd', '<Cmd>NvimTreeChangeRootToNode<CR>', { desc = "cd into folder in nvimtree" })
map('n', '<leader>up', '<Cmd>NvimTreeChangeRootToParent<CR>', { desc = "cd .. in nvimtree" })
