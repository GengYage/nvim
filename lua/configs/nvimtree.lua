require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
    highlight_opened_files = 'icon',
    icons = {
      glyphs = {
        git = {
          unstaged = "",
          staged = "√",
          unmerged = "",
          renamed = "➛",
          untracked = "U",
          deleted = "",
          ignored = "",
        },
      },
    },
  },
  filters = {
    dotfiles = true,
  },
  reload_on_bufenter = true,
})
