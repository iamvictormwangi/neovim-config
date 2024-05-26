vim.lsp.start {
  name = "Rustic Flow",
  cmd = {
    "npx", "ts-node",
    vim.fn.expand("~/rusticflow-lsp/server/src/server.ts")
  },
  capabilities = vim.lsp.protocol.make_client_capabilities()
}
