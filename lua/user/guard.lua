local status_ok, guard = pcall(require, "guard")
if not status_ok then
  return
end

local ft = require("guard.filetype")

ft("lua"):fmt("stylua")

guard.setup({
  fmt_on_save = true,
  lsp_as_default_formatter = true,
})
