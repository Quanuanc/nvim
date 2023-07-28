local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
  sources = {
    formatting.stylua,
    formatting.black,
    formatting.prettierd.with({ disabled_filetypes = { "yaml" } }),
    formatting.sqlfmt,
    formatting.beautysh,
    formatting.yamlfmt,
  },
  debug = false,
})
