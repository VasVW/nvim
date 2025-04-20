require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Start/Continue Debugging
map("n", "<F5>", function()
  require("dap").continue()
end, { desc = "Start/Continue Debugging" })

-- Step Over
map("n", "<F10>", function()
  require("dap").step_over()
end, { desc = "Step Over" })

-- Step Into
map("n", "<F2>", function()
  require("dap").step_into()
end, { desc = "Step Into" })

-- Step Out
map("n", "<F3>", function()
  require("dap").step_out()
end, { desc = "Step Out" })

-- Toggle Breakpoint
map("n", "<leader>b", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })

-- Set Breakpoint with Condition
map("n", "<leader>B", function()
  require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, { desc = "Set Breakpoint with Condition" })

-- Run to Cursor
map("n", "<leader>rc", function()
  require("dap").run_to_cursor()
end, { desc = "Run to Cursor" })

-- Evaluate Expression
map("n", "<leader>e", function()
  require("dap.ui.widgets").hover()
end, { desc = "Evaluate Expression" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
