return {
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
}
