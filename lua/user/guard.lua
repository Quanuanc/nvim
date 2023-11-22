local M = {
  "nvimdev/guard.nvim",
  dependencies = {
    "nvimdev/guard-collection",
  },
  event = "VeryLazy",
}

function M.config()
  local ft = require("guard.filetype")

  ft("lua"):fmt("stylua")
  ft("c"):fmt("clang-format")
  ft("html,javascript,json,yaml,typescript"):fmt("prettier")

  require("guard").setup({
    fmt_on_save = false,
    lsp_as_default_formatter = true,
  })
end

return M
