vim.filetype.add {
  extension = {
    jinja = 'jinja',
    jinja2 = 'jinja',
    j2 = 'jinja',
  },
}

-- if you want to debug
vim.lsp.set_log_level("debug")

local nvim_lsp = require('lspconfig')
local configs = require('lspconfig.configs')

if not configs.jinja_lsp then
  configs.jinja_lsp = {
    default_config = {
      name = "jinja-lsp",
      cmd = { 'path_to_lsp_or_command' },
      filetypes = { 'jinja', 'rust' },
      root_dir = function(fname)
        return "."
        --return nvim_lsp.util.find_git_ancestor(fname)
      end,
      init_options = {
        templates = './templates',
        backend = { './src' },
        lang = "rust"
      },
    },
  }
end
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
nvim_lsp.jinja_lsp.setup {
  capabilities = capabilities
}
nvim_lsp.jinja_lsp.setup {
}
