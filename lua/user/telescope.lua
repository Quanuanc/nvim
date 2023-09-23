local M = {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
}

function M.config()
  require("telescope").setup({
    defaults = {
      layout_config = {
        horizontal = {
          preview_width = 0.6,
        },
      },
    },
  })
end

return M
