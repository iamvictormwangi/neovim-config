local t    = {}
-- Syntax: t[keys] = {function, {function arguments}}
t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '250' } }
t['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '250' } }

require('neoscroll.config').set_mappings(t)
