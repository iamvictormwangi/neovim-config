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
  {
    "vhyrro/luarocks.nvim",
  },
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'L3MON4D3/LuaSnip',
  'rafamadriz/friendly-snippets',
  'saadparwaiz1/cmp_luasnip',
  'chrisgrieser/cmp_yanky',

  'mhinz/vim-startify',

  {
    'uloco/bluloco.nvim',
    lazy = false,
    priority = 1000,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
      require("bluloco").setup({
        style       = "dark", -- "auto" | "dark" | "light"
        transparent = false,
        italics     = false,
      })
    end,
  },
  {
    'Mofiqul/vscode.nvim',
    config = function()
      require('vscode').setup({
        style = 'dark',
        transparent = false,
        italic_comments = true,
        disable_nvimtree_bg = true,
      })
    end
  },
  {
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup {
        automatic_installation = true,
        handlers = nil
      }
    end
  },
  'neovim/nvim-lspconfig',
  {
    'onsails/lspkind.nvim',
    config = function()
      require('lspkind').init({
        mode = 'symbol_text',
        preset = 'default',
        -- default: {}
        symbol_map = {
          Text = "󰉿",
          Method = "󰆧",
          Function = "󰊕",
          Constructor = "",
          Field = "󰜢",
          Variable = "󰀫",
          Class = "󰠱",
          Interface = "",
          Module = "",
          Property = "󰜢",
          Unit = "󰑭",
          Value = "󰎠",
          Enum = "",
          Keyword = "󰌋",
          Snippet = "",
          Color = "󰏘",
          File = "󰈙",
          Reference = "󰈇",
          Folder = "󰉋",
          EnumMember = "",
          Constant = "󰏿",
          Struct = "󰙅",
          Event = "",
          Operator = "󰆕",
          TypeParameter = "",
        },
      })
    end
  },
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup({})
    end
  },
  {
    'ojroques/nvim-lspfuzzy',
    config = function()
      require("lspfuzzy").setup {}
    end
  },
  'ray-x/lsp_signature.nvim',
  'weilbith/nvim-code-action-menu',
  "SmiteshP/nvim-navbuddy",
  "nvim-neotest/nvim-nio",
  "SmiteshP/nvim-navic",
  'MunifTanjim/nui.nvim',
  {
    'lukas-reineke/lsp-format.nvim',
    config = function()
      require("lsp-format").setup {}
    end
  },
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require 'nvim-treesitter.configs'.setup {
        auto_install = true,
      }
    end
  },
  'tree-sitter/tree-sitter-embedded-template',
  "nvim-lua/plenary.nvim",
  {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('telescope').setup {
        defaults = {
          mappings = {
            i = {
              ["<C-h>"] = "which_key"
            }
          }
        },
        extensions = {
        }
      }
    end
  },
  {
    'akinsho/bufferline.nvim',
    config = function()
      require("bufferline").setup {}
    end
  },
  {
    "roobert/bufferline-cycle-windowless.nvim",
    config = function()
      require("bufferline-cycle-windowless").setup({
        default_enabled = true,
      })
    end
  },
  'Asheq/close-buffers.vim',
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup {
        options = {
          theme = 'jellybeans'
        }
      }
    end
  },
  'nvim-tree/nvim-tree.lua',
  {
    'nvim-tree/nvim-web-devicons',
    config = function()
      require 'nvim-web-devicons'.setup {
        override = {
          html = {
            icon = " ",
            name = "html",
          },
          sh = {
            icon = " ",
            name = "sh",
          }, md = {
          icon = " ",
          name = "md",
        },
          zsh = {
            icon = " ",
            name = "zsh",
          },
          fish = {
            icon = " ",
            name = "fish",
          },
          c = {
            icon = " ",
            name = "c",
          },
          h = {
            icon = " ",
            name = "c",
          },
          css = {
            icon = " ",
            name = "css",
          },
          js = {
            icon = " ",
            name = "js",
          },
          ts = {
            icon = "ﯤ ",
            name = "ts",
          },
          kt = {
            icon = "󱈙 ",
            name = "kt",
          },
          png = {
            icon = " ",
            name = "png",
          },
          jpg = {
            icon = " ",
            name = "jpg",
          },
          jpeg = {
            icon = " ",
            name = "jpeg",
          },
          mp3 = {
            icon = " ",
            name = "mp3",
          },
          mp4 = {
            icon = " ",
            name = "mp4",
          },
          out = {
            icon = " ",
            name = "out",
          },
          Dockerfile = {
            icon = " ",
            name = "Dockerfile",
          },
          rb = {
            icon = " ",
            name = "rb",
          },
          vue = {
            icon = "﵂ ",
            name = "vue",
          },
          py = {
            icon = " ",
            name = "py",
          },
          toml = {
            icon = " ",
            name = "toml",
          },
          lock = {
            icon = " ",
            name = "lock",
          },
          zip = {
            icon = " ",
            name = "zip",
          },
          xz = {
            icon = " ",
            name = "xz",
          },
          deb = {
            icon = " ",
            name = "deb",
          },
          rpm = {
            icon = " ",
            name = "rpm",
          },
          lua = {
            icon = " ",
            name = "lua",
          },
        },
      }
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {
        signs                             = {
          add          = { text = '┃' },
          change       = { text = '┃' },
          delete       = { text = '_' },
          topdelete    = { text = '‾' },
          changedelete = { text = '~' },
          untracked    = { text = '┆' },
        },
        signcolumn                        = true,  -- Toggle with `:Gitsigns toggle_signs`
        numhl                             = false, -- Toggle with `:Gitsigns toggle_numhl`
        linehl                            = false, -- Toggle with `:Gitsigns toggle_linehl`
        word_diff                         = false, -- Toggle with `:Gitsigns toggle_word_diff`
        watch_gitdir                      = {
          follow_files = true
        },
        auto_attach                       = true,
        attach_to_untracked               = false,
        current_line_blame                = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts           = {
          virt_text = true,
          virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
          delay = 1000,
          ignore_whitespace = false,
          virt_text_priority = 100,
        },
        current_line_blame_formatter      = '<author>, <author_time:%Y-%m-%d> - <summary>',
        current_line_blame_formatter_opts = {
          relative_time = false,
        },
        sign_priority                     = 6,
        update_debounce                   = 100,
        status_formatter                  = nil,   -- Use default
        max_file_length                   = 40000, -- Disable if file is longer than this (in lines)
        preview_config                    = {
          -- Options passed to nvim_open_win
          border = 'single',
          style = 'minimal',
          relative = 'cursor',
          row = 0,
          col = 1
        },
      }
    end
  },
  'airblade/vim-gitgutter',
  'tpope/vim-fugitive',
  {
    'stevearc/dressing.nvim',
    config = function()
      require("dressing").setup({
        put = {
          -- Set to false to disable the vim.ui.input implementation
          enabled = true,
        },

      })
    end
  },
  {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup({
        mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
          '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        performance_mode = true,     -- Disable "Performance Mode" on all buffers.
      })
    end
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require("Comment").setup()
    end
  },
  'tpope/vim-obsession',
  'tpope/vim-surround',
  'mattn/emmet-vim',
  'alvan/vim-closetag',
  'panozzaj/vim-autocorrect',
  'preservim/tagbar',
  {
    'ethanholz/nvim-lastplace',
    config = function()
      require("nvim-lastplace").setup {}
    end
  },
  {
    'windwp/nvim-autopairs',
    config = function()
      require("nvim-autopairs").setup {
        enable_moveright = true,
        enable_afterquote = true,
        disable_in_macro = true,
        ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=]
      }
    end
  },
  {
    'folke/which-key.nvim',
    config = function()
      require("which-key").setup {}
    end
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {
        '*',
        html = { names = true, },
        css = { names = true, },
        javascript = { names = true, },
      }
    end
  },
  {
    'kosayoda/nvim-lightbulb',
    config = function()
      require("nvim-lightbulb").setup({
        autocmd = { enabled = true }
      })
    end
  },
  'rcarriga/nvim-notify',
  'iamvictormwangi/better-escape.vim',
  'iamvictormwangi/vim-repeat',
  {
    'nmac427/guess-indent.nvim',
    config = function()
      require('guess-indent').setup {}
    end
  },
  'lukas-reineke/indent-blankline.nvim',
}

local user_plugins = require("user_config.plugins")

local opts = {}


function TableConcat(t1, t2)
  for i = 1, #t2 do
    t1[#t1 + 1] = t2[i]
  end
  return t1
end

local combinedTable = TableConcat(plugins, user_plugins)

require("lazy").setup(combinedTable, opts)
