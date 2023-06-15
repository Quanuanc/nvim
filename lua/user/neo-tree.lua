local status_ok, neo_tree = pcall(require, "neo-tree")
if not status_ok then
  return
end

neo_tree.setup({
  enable_git_status = true,
  enable_diagnostics = false,
  default_component_configs = {
    git_status = {
      symbols = {
        added = "",
        modified = "",
        deleted = "",
        renamed = "",
        untracked = "",
        ignored = "",
        unstaged = "",
        staged = "",
        conflict = "",
      },
    },
  },
  window = {
    mapping_options = {
      noremap = true,
      nowait = true,
    },
    mappings = {
      ["o"] = "open",
    },
  },
  filesystem = {
    use_libuv_file_watcher = true,
  },
})
