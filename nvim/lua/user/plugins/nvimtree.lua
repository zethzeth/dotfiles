require('nvim-tree').setup({
  git = {
    ignore = false
  },
  sort_by = "case_sensitive",
  view = {
    width = 45,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
    icons = {
      show = {
        folder_arrow = false,
      }
    },
    indent_markers = {
      enable = true,
    }
  },
  filters = {
    dotfiles = true,
    custom = { ".git" },
    exclude = { ".gitignore" }
  },
})

vim.keymap.set('n', '<Leader>n', ':NvimTreeFindFileToggle<CR>')
