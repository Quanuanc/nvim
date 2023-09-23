local M = {
  "romgrk/barbar.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  version = "^1.0.0", -- optional: only update when a new 1.x version is released
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
}

vim.g.barbar_auto_setup = false

function M.config()
  require("barbar").setup({
    animation = false,
    icons = {
      button = "",
    },
    sidebar_filetypes = {
      ["neo-tree"] = { event = "BufWipeout" },
    },
  })
end

return M
