local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

  -- colorscheme
  -- the best colorscheme in the world

  'Mofiqul/vscode.nvim',

  -- lsp

  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'onsails/lspkind.nvim',
  'nvimdev/lspsaga.nvim',
  'ojroques/nvim-lspfuzzy',
  'ray-x/lsp_signature.nvim',
  'weilbith/nvim-code-action-menu',
  "SmiteshP/nvim-navbuddy",
  'lukas-reineke/lsp-format.nvim',
  "SmiteshP/nvim-navic",
  'MunifTanjim/nui.nvim',

  -- required for some plugins to work

  "nvim-neotest/nvim-nio",

  -- treesitter
  'nvim-treesitter/nvim-treesitter',
  'tree-sitter/tree-sitter-embedded-template',

  -- telescope

  "nvim-lua/plenary.nvim",
  'nvim-telescope/telescope.nvim',

  -- bufferline/bufferlines

  'akinsho/bufferline.nvim',
  "roobert/bufferline-cycle-windowless.nvim",
  'Asheq/close-buffers.vim',
  'j-morano/buffer_manager.nvim',

  -- statusline

  'beauwilliams/statusline.lua',
  'romgrk/barbar.nvim',

  -- completion

  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-emoji',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',
  'yochem/cmp-htmx',
  'chrisgrieser/cmp_yanky',

  -- start screen

  'mhinz/vim-startify',

  -- lualine

  'nvim-lualine/lualine.nvim',

  -- file explorer

  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'SmiteshP/nvim-navbuddy',

  -- mappings

  "b0o/mapx.nvim",

  -- Git

  'lewis6991/gitsigns.nvim',
  'airblade/vim-gitgutter',
  'tpope/vim-fugitive',

  -- make neovim all that good

  'stevearc/dressing.nvim',

  -- intergated terminal

  'akinsho/toggleterm.nvim',

  -- comments

  'numToStr/Comment.nvim',

  -- formatting / but I want lsp to handle this

  -- "elentok/format-on-save.nvim",

  -- new

  'folke/trouble.nvim',
  'ray-x/web-tools.nvim',
  'gennaro-tedesco/nvim-peekup',
  'jghauser/mkdir.nvim',
  'sontungexpt/url-open',
  'stevearc/aerial.nvim',
  "AndrewRadev/tagalong.vim",
  "HakonHarnes/img-clip.nvim",

  "vxpm/ferris.nvim",

  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    config = true,
  },

  -- scrolling

  'karb94/neoscroll.nvim',

  -- core plugins

  'tpope/vim-obsession',
  'tpope/vim-surround',
  'mattn/emmet-vim',
  'alvan/vim-closetag',
  'panozzaj/vim-autocorrect',
  'preservim/tagbar',
  'ethanholz/nvim-lastplace',
  'windwp/nvim-autopairs',
  'folke/which-key.nvim',
  'norcalli/nvim-colorizer.lua',
  'kosayoda/nvim-lightbulb',
  'rcarriga/nvim-notify',

  -- personal plugins

  'iamvictormwangi/better-escape.vim',
  'iamvictormwangi/vim-repeat',
  "iamvictormwangi/cmp_rusticflow",
  "iamvictormwangi/cmp_dictionary",

  -- Markdown

  "iamcco/markdown-preview.nvim",
  'mzlogin/vim-markdown-toc',
  'dhruvasagar/vim-table-mode',

  -- indent

  'nmac427/guess-indent.nvim',
  'lukas-reineke/indent-blankline.nvim',

  -- folds

  "anuvyklack/fold-preview.nvim",
  "anuvyklack/pretty-fold.nvim",

  'stevearc/oil.nvim',
  'nvim-orgmode/orgmode',
  'sudormrfbin/cheatsheet.nvim',
  'kevinhwang91/nvim-ufo',
  'ziontee113/color-picker.nvim',
  'pluffie/neoproj',
  'ekickx/clipboard-image.nvim',
  "j-hui/fidget.nvim",
  'nvim-early-retirement',
  "folke/trouble.nvim",
  "mattn/webapi-vim",
  "preservim/vim-pencil",
  "nvimdev/guard.nvim",

}

local opts = {}

require("lazy").setup(plugins, opts)
