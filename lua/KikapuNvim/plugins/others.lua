return {
	"vhyrro/luarocks.nvim",
	"tpope/vim-obsession",
	"tpope/vim-surround",
	"alvan/vim-closetag",
	"panozzaj/vim-autocorrect",
	"preservim/tagbar",
	{
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup({
				background_colour = "#000000",
			})
		end,
	},
	"iamvictormwangi/better-escape.vim",
	"iamvictormwangi/vim-repeat",
	{
		"ray-x/web-tools.nvim",
		config = function()
			require("web-tools").setup()
		end,
	},

	"anuvyklack/keymap-amend.nvim",
	{
		"ziontee113/color-picker.nvim",
		config = function()
			require("color-picker").setup()
		end,
	},
	"weilbith/nvim-code-action-menu",
	"SmiteshP/nvim-navbuddy",
	"nvim-neotest/nvim-nio",
	"SmiteshP/nvim-navic",
	"MunifTanjim/nui.nvim",
	"nvim-lua/plenary.nvim",
}
