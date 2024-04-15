-- This has to be on for gitgutter plugin to work

vim.cmd [[ set signcolumn=yes]]

-- Disable max threshold

vim.cmd [[ let g:gitgutter_max_signs = -1 ]]

vim.cmd [[
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
]]


vim.cmd [[
" let g:gitgutter_sign_added = 'xx'
" let g:gitgutter_sign_modified = 'yy'
" let g:gitgutter_sign_removed = 'zz'
" let g:gitgutter_sign_removed_first_line = '^^'
" let g:gitgutter_sign_removed_above_and_below = '{'
" let g:gitgutter_sign_modified_removed = 'ww'
]]
