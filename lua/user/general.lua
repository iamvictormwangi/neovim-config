-- Your config come here

vim.o.background = 'dark'

vim.cmd [[ colorscheme dark-gruvbox  ]]

vim.api.nvim_set_keymap('n', '<C-j>', '<C-e>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-u>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>DjHtmlFormat<Cr>', { noremap = true })

vim.cmd [[
  let g:mkdp_auto_start = 0
  let g:mkdp_auto_close = 0
  let g:mkdp_refresh_slow = 1
  let g:mkdp_browser = 'qutebrowser'
]]


vim.cmd [[
  augroup filetypedetect
    au! BufRead,BufNewFile *.html.jinja,*.jinja,*.jinja2 set filetype=jinja
  augroup END
  autocmd FileType jinja setlocal shiftwidth=2 tabstop=2 softtabstop=2

  " Define the command to run djhtml and optionally force writing with ! if provided
command! -bang -nargs=0 DjHtmlFormat execute 'silent! !djhtml' fnameescape(expand('%')) '<bang>'

  " Trigger DjHtmlFormat command on BufWritePre for the specified filetypes
autocmd BufWritePre *.html,*.htm,*.jsp,*.php,*.djhtml,*.jinja,*.jinja2 :DjHtmlFormat!
]]
