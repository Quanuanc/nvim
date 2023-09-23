local M = {
  "gbprod/substitute.nvim",
  event = "VeryLazy",
}

function M.config()
  require("substitute").setup()
end

return M
