--[[
 __  __                   _
|  \/  | __ _ _ __  _ __ (_)_ __   __ _ ___
| |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
| |  | | (_| | |_) | |_) | | | | | (_| \__ \
|_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
             |_|   |_|            |___/
]]

local g = vim.g
local api = vim.api
local keymap = vim.api.nvim_set_keymap

-- Leader Key

g.mapleader = " "
g.maplocalleader = " "

-- Repeat Key

api.nvim_set_keymap(
  'n',
  's',
  '.',
  { noremap = true }
)

vim.cmd [[
  tnoremap <Esc> <C-\><C-n>
]]

-- Repeat a Macro

api.nvim_set_keymap(
  'n',
  'S',
  '@p',
  { noremap = true }
)

-- Yank also with t key

api.nvim_set_keymap(
  'n',
  't',
  'y',
  { noremap = true }
)

-- Indenting Keys

api.nvim_set_keymap(
  'v',
  '<',
  '<gv',
  { noremap = true }
)

api.nvim_set_keymap(
  'v',
  '>',
  '>gv',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '<Tab>',
  '>>',
  { noremap = true }
)

api.nvim_set_keymap(
  'v',
  '<Tab>',
  '>gv',
  { noremap = true }
)

-- Write & Quit

api.nvim_set_keymap(
  'n',
  '<leader>w',
  '<cmd>w<CR>',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '<leader>q',
  '<cmd>q<CR>',
  { noremap = true }
)

api.nvim_set_keymap(
  'c',
  'Wq',
  'wq',
  { noremap = true }
)

api.nvim_set_keymap(
  'c',
  'W',
  'w',
  { noremap = true }
)

-- Toggle File Tree

api.nvim_set_keymap(
  'n',
  '<leader>e',
  '<cmd>NvimTreeToggle<Enter>',
  { noremap = true }
)

-- Open Fuzzy Finder

api.nvim_set_keymap(
  'n',
  '<leader>f',
  '<cmd>FZF<Enter>',
  { noremap = true }
)

-- Open ToggleTerm

api.nvim_set_keymap(
  'n',
  '<leader>t',
  '<cmd>ToggleTerm<CR>',
  { noremap = true }
)

-- Buffers and Windows

api.nvim_set_keymap(
  'n',
  '<leader>n',
  '<C-w>w',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '<leader>l',
  '<cmd>bn<Enter>',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '<leader>h',
  '<cmd>bp<Enter>',
  { noremap = true }
)

-- Going down a line

api.nvim_set_keymap(
  'n',
  '<CR>',
  'o<ESC>',
  { noremap = true }
)

-- Handling Line Wraps

api.nvim_set_keymap(
  'n',
  '0',
  'g0',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '$',
  'g$',
  { noremap = true }
)

-- Auto center the text under the cursor

api.nvim_set_keymap(
  'n',
  'k',
  'gkzz',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  'j',
  'gjzz',
  { noremap = true }
)

api.nvim_set_keymap(
  'v',
  'k',
  'kzz',
  { noremap = true }
)

api.nvim_set_keymap(
  'v',
  'j',
  'jzz',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  'n',
  'nzz',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  'N',
  'Nzz',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  'G',
  'Gzz',
  { noremap = true }
)

-- Instead of hitting enter

api.nvim_set_keymap(
  'c',
  'jj',
  '<Cr>',
  { noremap = true }
)

-- Emmet trigger key

vim.cmd [[ imap <c-o> <c-y>,]]


-- Code Action Trigger

api.nvim_set_keymap(
  'n',
  '<leader>z',
  '<cmd>CodeActionMenu<Cr>',
  { noremap = true }
)

-- Color Picker

api.nvim_set_keymap(
  'n',
  '<leader><Caps>',
  '<cmd>PickColor<Cr>',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '<leader><leader>',
  '<cmd>WhichKey<Cr>',

  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '<leader>up',
  '<cmd>resize +2<Cr>',
  { noremap = true }
)


api.nvim_set_keymap(
  'n',
  '<leader>left',
  '<cmd>resize +2<Cr>',
  { noremap = true }
)

api.nvim_set_keymap(
  'n',
  '<leader>right',
  '<cmd>resize -2<Cr>',
  { noremap = true }
)


api.nvim_set_keymap(
  'n',
  '<leader>p',
  '<cmd>%!prettier --print-width=100 --tab-width=2 --semi=true --stdin-filepath=%<Cr>',

  { noremap = true }
)

vim.cmd [[
autocmd FileType python,php,javascript,javascriptreact,typescript,typescriptreact,html,css,php,scss,sass,svelte,java,ejs let g:prettier#autoformat = 1

" nnoremap <leader>p :%!prettier --print-width=100 --tab-width=2 --semi=true --stdin-filepath=%<CR>
]]
