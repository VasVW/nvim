return {
  requires = {
  "copilotlsp-nvim/copilot-lsp",
  init = function()
    vim.g.copilot_nes_debounce = 500
  end,
  },
  event = "InsertEnter",
  opts = {
    panel = {
      enabled = false,
    },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      debounce = 75,
      keymap = {
        accept = "<C-l>",
        accept_word = false,
        accept_line = false,
        next = "<C-]>",
        prev = "<C-[>",
        dismiss = "<C-/>",
      },
    },
  }
}
