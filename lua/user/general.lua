-- Your config come here

vim.o.background = 'dark'

vim.cmd [[ colorscheme catppuccin  ]]

vim.cmd [[ set signcolumn=yes ]]
vim.cmd [[ set termguicolors ]]

vim.api.nvim_set_keymap('n', '<C-j>', '<C-e>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-u>', { noremap = true })

vim.cmd [[
  let g:mkdp_auto_start = 0
  let g:mkdp_auto_close = 0
  let g:mkdp_refresh_slow = 1
  let g:mkdp_browser = 'qutebrowser'
]]
