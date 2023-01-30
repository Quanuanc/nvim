local status_ok, im_select = pcall(require, "im_select")
if not status_ok then
  return
end

if vim.fn.has("linux") ~= 1 then
  im_select.setup({
    disable_auto_restore = 1
  })
end
