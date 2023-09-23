local M = {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  event = "VimEnter",
}

function M.config()
  require("neo-tree").setup({
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
end

return M
