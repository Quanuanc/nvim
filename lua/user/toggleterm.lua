local M = { "akinsho/toggleterm.nvim", version = "*", event = "VeryLazy" }

function M.config()
  require("toggleterm").setup({
    open_mapping = [[<c-\>]],
    direction = "horizontal",
    shell = vim.fn.has("win32") == 1 and "powershell" or vim.o.shell,
  })
end

return M
