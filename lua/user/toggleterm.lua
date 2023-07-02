local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end

toggleterm.setup({
  open_mapping = [[<c-\>]],
  direction = "horizontal",
  shell = vim.fn.has("win32") == 1 and "powershell" or vim.o.shell,
})
