require("nvchad.options")
-- add yours here!

-- Set Treesitter as the folding engine
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

-- Keep folds open by default when you open a file (otherwise it looks like a mess)
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- local o = vim.o
-- o.cursorlinept ='both' -- to enable cursorline!
