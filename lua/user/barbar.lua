local status_ok, bar = pcall(require, "barbar")
if not status_ok then
  return
end

vim.g.barbar_auto_setup = false

bar.setup({
  animation = false,
  icons = {
    button = "",
  },
  sidebar_filetypes = {
    ["neo-tree"] = { event = "BufWipeout" },
  },
})
