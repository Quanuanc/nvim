local M = {}

local journal_file = vim.loop.cwd() .. "/" .. "main.beancount"

M.init_options = {
  journal_file = journal_file,
}

return M
