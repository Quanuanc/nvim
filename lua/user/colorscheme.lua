local M = {
  "ribru17/bamboo.nvim",
  lazy = false,
  priority = 1000,
}

M.name = "bamboo"
function M.config()
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M
