return {
  {
    dir = "~/Projects/NeovimPlugins/fixer-for-writers/", -- Your path
    name = "fixer-for-writers",
    config = function()
      require('fixer-for-writers')
    end
  },
  {
    dir = "~/Projects/NeovimPlugins/less-typer/", -- Your path
    name = "less-typer",
    config = function()
      require('less-typer')
    end
  },
  {
    dir = "~/Projects/NeovimPlugins/faker.nvim/", -- Your path
    name = "faker.nvim",
    config = function()
      require('faker')
    end
  },
}
