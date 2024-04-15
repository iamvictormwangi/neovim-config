local wo = vim.wo
local o = vim.o
local opt = vim.opt
local cmd = vim.cmd
local g = vim.g

cmd [[ set clipboard+=unnamedplus ]]

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

cmd [[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=350})
augroup END
]]

-- Enable undo files

cmd([[

set undodir=$HOME/.vim/undo
set undofile

]])

-- Disable annoying swap files

cmd [[set noswapfile]]

-- Remove trailing whitespace on save

cmd([[ au BufWritePre * :%s/\s\+$//e ]])

-- Create folds manually and let the folds be persistent

cmd([[

set foldenable
set foldmethod=manual
au BufWinLeave * mkview
au BufWinEnter * silent! loadview

]])

-- Use global clipboard

cmd [[
" Use the system clipboard for copy and paste operations
set clipboard=unnamedplus

" Enable copying to the system clipboard in visual mode
vnoremap <C-c> "+y

" Enable pasting from the system clipboard in insert mode
inoremap <C-v> <C-r>+
]]


-- save currently buffer whenever i am switching buffers

cmd [[ set autowriteall ]]

-- Searching

o.hlsearch            = false
o.updatetime          = 250
o.ignorecase          = true
o.ignorecase          = true
o.smartcase           = true
o.smartcase           = true
wo.signcolumn         = 'auto'
o.synmaxcol           = 240

-- Indenting

o.smarttab            = true
o.smartindent         = true
o.expandtab           = true
o.tabstop             = 2
o.softtabstop         = 2
o.shiftwidth          = 2

-- Add Mouse support

o.mouse               = 'a'
opt.mousefocus        = true
opt.mousemoveevent    = true

-- Completion and language

o.completeopt         = "menuone,noinsert,noselect"
o.wildmode            = "longest,full"
o.fileencoding        = "utf-8"
o.spell               = false
opt.completeopt       = "menu,menuone,noselect"

-- General

o.splitbelow          = true
o.splitright          = true
o.scrolloff           = 12
o.sidescrolloff       = 8
--o.hidden = true
o.lazyredraw          = true
o.wrap                = true
--o.cmdheight = 0
o.ls                  = 0

vim.opt.termguicolors = true

vim.cmd([[
set winbar=%f
set spell

au BufNewFile,BufRead *.ejs set filetype=html
au BufRead,BufNewFile *.txt,.md set wrap linebreak
au BufRead,BufNewFile *.txt,.md set tw=80

" for formatting
"v
"gq
]])
