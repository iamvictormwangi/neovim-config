local wo = vim.wo
local o = vim.o
local opt = vim.opt
local cmd = vim.cmd
local g = vim.g

-- Leader Key

g.mapleader = " "
g.maplocalleader = " "

-- enable gruvbox colorscheme

vim.o.background = 'dark'

-- Hide mode
opt.showmode = false

-- Enable break indent
opt.breakindent = true

opt.undofile = true
opt.undodir = ".vim"

-- Searching

o.hlsearch = false
o.updatetime = 250
o.ignorecase = true
o.ignorecase = true
o.smartcase = true

-- enable sign column
wo.signcolumn = "yes"
o.synmaxcol = 280

-- use global keyboard

opt.clipboard = "unnamedplus"

-- cmd [[ set clipboard+=unnamedplus ]]

-- Sets how neovim will display certain whitespace characters in the editor.

opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Disable vim builtins for faster startup time

g.loaded_gzip = 1
g.loaded_zip = 1
g.loaded_zipPlugin = 1
g.loaded_tar = 1
g.loaded_tarPlugin = 1

g.loaded_getscript = 1
g.loaded_getscriptPlugin = 1
g.loaded_vimball = 1
g.loaded_vimballPlugin = 1
g.loaded_2html_plugin = 1

g.loaded_matchit = 1
g.loaded_matchparen = 1
g.loaded_logiPat = 1
g.loaded_rrhelper = 1

-- Disable commenting for new lines

cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

-- Highligh yanked text

cmd([[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=350})
augroup END
]])

-- Disable annoying swap files

cmd([[set noswapfile]])

-- Remove trailing whitespace on save

cmd([[ au BufWritePre * :%s/\s\+$//e ]])

-- Create folds manually and let the folds be persistent

cmd([[

set foldenable
set foldmethod=manual

]])

-- Use global clipboard

cmd([[
" Use the system clipboard for copy and paste operations
set clipboard=unnamedplus

" Enable copying to the system clipboard in visual mode
vnoremap <C-c> "+y

" Enable pasting from the system clipboard in insert mode
inoremap <C-v> <C-r>+
]])

-- save currently buffer whenever i am switching buffers

cmd([[ set autowriteall ]])

-- Indenting

o.smarttab = true
o.smartindent = true
o.expandtab = true
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2

-- Add Mouse support

o.mouse = "a"
opt.mousefocus = true

-- Completion and language

o.completeopt = "menuone,noinsert,noselect"
o.wildmode = "longest,full"
o.fileencoding = "utf-8"
o.spell = false
opt.completeopt = "menu,menuone,noselect"

-- General

-- Handle splits

o.splitbelow = true
o.splitright = true

-- Scrolling

o.scrolloff = 12
o.sidescrolloff = 8

o.hidden = true

o.lazyredraw = false
o.wrap = true

vim.cmd([[ set spell ]])

vim.cmd([[ set number ]])

vim.cmd([[ set relativenumber ]])

vim.cmd([[ set termguicolors ]])

vim.cmd([[ filetype on ]])

vim.cmd([[

function! DisableSyntaxForLargeFiles()
    if getfsize(expand('%')) > 1000000 " Adjust the size threshold as needed
        syntax off
    else
        syntax enable
    endif
endfunction

autocmd BufEnter * call DisableSyntaxForLargeFiles()

]])
