return {
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
}
