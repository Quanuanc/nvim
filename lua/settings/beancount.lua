local M = {}

local journal_file = vim.loop.cwd() .. "/" .. "main.beancount"

M.cmd = {
  "beancount-language-server",
  "--stdio",
  "stdio",
}
M.init_options = {
  journal_file = journal_file,
}

return M
