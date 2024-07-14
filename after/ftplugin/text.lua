vim.lsp.start {
  name = "Kamusi",
  cmd = {
    "npx", "ts-node",
    vim.fn.expand("~/Projects/servers/kamusi-lsp/server/src/server.ts")
  },
  capabilities = vim.lsp.protocol.make_client_capabilities()
}

vim.lsp.start {
  name = "Dictionary",
  cmd = {
    "npx", "ts-node",
    vim.fn.expand("~/Projects/servers/dictionary-lsp/server/src/server.ts")
  },
  capabilities = vim.lsp.protocol.make_client_capabilities()
}
