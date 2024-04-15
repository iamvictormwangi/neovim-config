require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require("mason-lspconfig").setup {
  ensure_installed = { "bashls", "clangd", "cssls", "cssmodules_ls", "emmet_ls", "html", "intelephense", "svelte", "tsserver", "rust_analyzer" },
  automatic_installation = true,
  handlers = nil
}
