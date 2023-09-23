local M = {
  "Pocco81/auto-save.nvim",
  event = "VeryLazy",
}

function M.config()
  require("auto-save").setup()
end

return M
