return {
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require("toggleterm").setup {
        shade_terminals = true,
        shading_factor = '10',
        start_in_insert = true,
        border = 'curved',
        direction = 'horizontal',
        auto_scroll = true, -- automatically scroll to the bottom on terminal output
      }
    end
  },
  {
    'ray-x/web-tools.nvim',
    config = function()
      require 'web-tools'.setup()
    end
  },
  {
    'sontungexpt/url-open',
    config = function()
      require("url-open").setup({
        open_app = "default",
        open_only_when_cursor_on_url = true,
        highlight_url = {
          all_urls = {
            enabled = false,
            fg = "#21d5ff", -- "text" or "#rrggbb"
            -- fg = "text", -- text will set underline same color with text
            bg = nil,       -- nil or "#rrggbb"
            underline = true,
          },
          cursor_move = {
            enabled = true,
            fg = "#199eff", -- "text" or "#rrggbb"
            -- fg = "text", -- text will set underline same color with text
            bg = nil,       -- nil or "#rrggbb"
            underline = true,
          },
        },
        deep_pattern = false,
      })
    end
  },
  {
    'stevearc/aerial.nvim',
    config = function()
      require("aerial").setup({
        -- optionally use on_attach to set keymaps when aerial has attached to a buffer
        on_attach = function(bufnr)
          -- Jump forwards/backwards with '{' and '}'
          vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
          vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
        end,
      })
    end
  },
  {
    "iamvictormwangi/cmp_rusticflow",
    config = function()
      require('cmp_rusticflow'):setup()
    end
  },
  {
    "iamvictormwangi/cmp_dictionary",
    config = function()
      require('cmp_dictionary'):setup()
    end
  },
  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup {}
    end
  },
  'yochem/cmp-htmx',
  'hrsh7th/cmp-emoji',
  "iamcco/markdown-preview.nvim",
  "anuvyklack/keymap-amend.nvim",
  {
    "anuvyklack/fold-preview.nvim",
    config = function()
      require("fold-preview").setup()
    end
  },
  {
    "anuvyklack/pretty-fold.nvim",
    config = function()
      require("pretty-fold").setup()
    end
  },
  {
    'ziontee113/color-picker.nvim',
    config = function()
      require("color-picker").setup()
    end
  },
}
