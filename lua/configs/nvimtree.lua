return function()
  require("nvim-tree").setup {
    filters = {
      dotfiles = false,        -- show hidden dotfiles
      git_clean = false,       -- show files even when clean in Git
      no_buffer = false,
      custom = {},             -- any other custom hides
    },
    git = {
      enable = true,           -- enable Git status icons
      ignore = false,          -- show files listed in .gitignore
      timeout = 500,
    },
    view = {
      width = 30,
      side = "left",
    },
    renderer = {
      highlight_git = true,
      icons = {
        show = {
          git = true,
          folder = true,
          file = true,
        },
      },
    },
  }
end
