require("nvim-tree").setup{
  sort_by = "case_sensitive",
  sync_root_with_cwd = true,
  disable_netrw = true,
  ignore_buffer_on_setup = true,
  view = {
    adaptive_size = true,
    side = "left",
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "<CR>", action = "tabnew" }
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
    enable = true,
    ignore = false,
  },
}
