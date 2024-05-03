return {
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require("toggleterm").setup {
        shade_terminals = true,
        shading_factor = '10',
        start_in_insert = true,
        border = 'curved',
        direction = 'float',
        auto_scroll = true, -- automatically scroll to the bottom on terminal output
      }
    end
  },
}
