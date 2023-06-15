local status_ok, zero = pcall(require, "lsp-zero")
if not status_ok then
  return
end

local zero_preset = zero.preset({})

zero_preset.on_attach(function(client, bufnr)
  zero_preset.default_keymaps({
    buffer = bufnr,
    omit = { "gr", "K", "<F2>", "<F3>", "<F4>" },
  })

  vim.keymap.set({ "n", "i" }, "<M-j>", "<cmd>lua vim.diagnostic.open_float()<cr>", { buffer = true })
  vim.keymap.set({ "n", "i" }, "<M-k>", "<cmd>lua vim.lsp.buf.hover()<cr>", { buffer = true })
  vim.keymap.set({ "n" }, "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", { buffer = true })
  vim.keymap.set({ "n", "x" }, "==", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", { buffer = true })
  vim.keymap.set({ "n", "i" }, "<M-CR>", "<cmd>lua vim.lsp.buf.code_action()<cr>", { buffer = true })
  vim.keymap.set({ "n" }, "gn", "<cmd>lua vim.diagnostic.goto_next()<cr>", { buffer = true })
  vim.keymap.set({ "n" }, "gN", "<cmd>lua vim.diagnostic.goto_prev()<cr>", { buffer = true })

  if client.name == "lua_ls" then
    client.server_capabilities.documentFormattingProvider = false
  end
end)

zero_preset.ensure_installed({
  "lua_ls",
  "jsonls",
  "rust_analyzer",
  "pyright",
  "jdtls",
})

-- (Optional) Configure lua language server for neovim
local lsp_ok, lspconfig = pcall(require, "lspconfig")
if not lsp_ok then
  return
end

lspconfig.lua_ls.setup(zero_preset.nvim_lua_ls())

zero_preset.setup()
