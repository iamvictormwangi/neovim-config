return {
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require 'nvim-treesitter.configs'.setup {
        auto_install = true,
      }
    end
  },
  'tree-sitter/tree-sitter-embedded-template',
}
