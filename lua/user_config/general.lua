vim.o.background = 'dark'

vim.cmd [[ colorscheme vscode ]]

vim.cmd [[ set signcolumn=yes ]]
vim.cmd [[ set termguicolors ]]

vim.api.nvim_set_keymap('n', '<C-j>', '<C-e>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-u>', { noremap = true })
