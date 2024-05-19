-- Your config come here

vim.o.background = 'dark'

vim.cmd [[ colorscheme dark-gruvbox  ]]

vim.api.nvim_set_keymap('n', '<C-j>', '<C-e>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-u>', { noremap = true })

vim.cmd [[
  let g:mkdp_auto_start = 0
  let g:mkdp_auto_close = 0
  let g:mkdp_refresh_slow = 1
  let g:mkdp_browser = 'qutebrowser'
]]


vim.cmd [[
  autocmd BufNewFile,BufRead *.jinja set filetype=jinja
  autocmd FileType jinja setlocal shiftwidth=2 tabstop=2 softtabstop=2
]]
