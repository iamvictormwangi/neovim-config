return {
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
}
