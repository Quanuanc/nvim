local status_ok, guard = pcall(require, "guard")
if not status_ok then
  return
end

local ft = require("guard.filetype")

ft("lua"):fmt("stylua")
ft("c"):fmt("clang-format")
ft("html,javascript"):fmt("prettier")

guard.setup({
  fmt_on_save = false,
  lsp_as_default_formatter = true,
})
