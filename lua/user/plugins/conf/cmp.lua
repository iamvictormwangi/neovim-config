local present, cmp = pcall(require, "cmp")
if not present then
  return
end

vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

local lspkind = require('lspkind')

-- Add additional capabilities supported by nvim-cmp
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

--local lspconfig = require('lspconfig')

-- luasnip setup
-- local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'

cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 50,   -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      menu = ({
        cmp_stylemyapp = "[ℒ]",
        cmp_dictionary = "[D]",
        nvim_lsp = 'λ',
        luasnip = '⋗',
        buffer = '﬘',
        path = '',
      }),
    })
  },
  snippet = {
    expand = function(args)
      --  luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = {
    {
      name = "dictionary",
      keyword_length = 1,
    },
    { name = "stylemyapp" },
    { name = "cmp-htmx" },
    { name = 'cmp_builtins' },
    { name = 'cmp_dictionary' },
    { name = 'nvim_lsp' },
    { name = "buffer" },
    { name = "path" },
    { name = "luasnip" },
    { name = 'emoji' },
  },
  window = {
    documentation = cmp.config.window.bordered()
  },
}
