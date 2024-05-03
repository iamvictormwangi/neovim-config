return {
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
}
