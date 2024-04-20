require("user.plugins.conf.lsp")
require("user.plugins.conf.cmp")
require("user.plugins.conf.treesitter")
require("user.plugins.conf.dressing_nvim")
require("user.plugins.conf.lualine")
require("user.plugins.conf.nvim_devicons")
require("user.plugins.conf.nvim_tree")
require("user.plugins.conf.gitsigns")
require("user.plugins.conf.gitgutter")
require("user.plugins.conf.emmet")
require("user.plugins.conf.closetags")
require("user.plugins.conf.toggleterm")
require("user.plugins.conf.neoscroll")
require("user.plugins.conf.autopairs")
require("user.plugins.conf.lightbulb")
require("user.plugins.conf.mapx")
require("user.plugins.conf.barbar")
require("user.plugins.conf.ibl")
require("user.plugins.conf.aerial")
require('Comment').setup()
require('telescope').setup()
require("luasnip.loaders.from_vscode").lazy_load()
require("nvim-lastplace").setup {}
require("which-key").setup {}
require("lspfuzzy").setup {}

-- require("startup").setup({ theme = "dashboard" })

vim.cmd [[ colorscheme vscode ]]

require("lsp-format").setup {}
require('cmp_rusticflow'):setup()
require('cmp_dictionary'):setup()
require('guess-indent').setup {}
require("bufferline").setup {}
require("bufferline-cycle-windowless").setup({
  default_enabled = true,
})
require('pretty-fold').setup()
require("user.plugins.conf.colorizer")
-- require('barbar').setup()
require("fidget").setup {}
-- require("luarocks-nvim").setup()

local statusline = require('statusline')
--require('oil').setup()
--require("thepengiundev.plugins.conf.fugitive")
--require("user.plugins.conf.color-picker")
--require("user.plugins.conf.kanagawa")
--require("user.plugins.conf.zen-mode")
