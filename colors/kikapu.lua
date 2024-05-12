local colors = {
  black = "#000000",
  red = "#FF0000",
  green = "#00FF00",
  white = "#FFFFFF",
}

-- Define the color palette based on the Kenyan flag
local kenyan_palette = {
  black = colors.black,
  red = colors.red,
  green = colors.green,
  white = colors.white,
}

-- Define the color groups for syntax highlighting
local theme = {
  Normal = { fg = kenyan_palette.white, bg = kenyan_palette.black },
  Comment = { fg = kenyan_palette.green },
  Constant = { fg = kenyan_palette.red },
  Function = { fg = kenyan_palette.red },
  Keyword = { fg = kenyan_palette.red },
  String = { fg = kenyan_palette.red },
  Type = { fg = kenyan_palette.red },
}

-- Apply the color groups to the Neovim theme
for group, colors in pairs(theme) do
  vim.cmd("hi " .. group .. " guifg=" .. colors.fg .. " guibg=" .. colors.bg)
end

-- Set the Tree-sitter colors
require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    disable = {},
  },
  playground = {
    enable = true,
  },
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = { "BufWrite", "CursorHold" },
  },
  context_commentstring = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
  },
  ensure_installed = "maintained",
  ignore_install = {},
  matchup = {
    enable = true,
  },
  autopairs = {
    enable = true
  }
}

-- Override some colors for Tree-sitter
vim.cmd("hi! link TSError Comment")
vim.cmd("hi! link TSWarning Keyword")
vim.cmd("hi! link TSPunctDelimiter Keyword")
vim.cmd("hi! link TSPunctBracket Keyword")
vim.cmd("hi! link TSPunctSpecial Keyword")
