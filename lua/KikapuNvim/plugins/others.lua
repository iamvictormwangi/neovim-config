return {
	"vhyrro/luarocks.nvim",
	"tpope/vim-obsession",
	"tpope/vim-surround",
	"alvan/vim-closetag",
	"preservim/tagbar",
	"panozzaj/vim-autocorrect",
	{
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup({
				background_colour = "#000000",
			})
		end,
		enabled = false
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
	"sudormrfbin/cheatsheet.nvim",
	{
		"smoka7/multicursors.nvim",
		event = "VeryLazy",
		dependencies = {
			'smoka7/hydra.nvim',
		},
		opts = {},
		cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
		keys = {
			{
				mode = { 'v', 'n' },
				'<Leader>m',
				'<cmd>MCstart<cr>',
				desc = 'Create a selection for selected text or word under the cursor',
			},
		},
	}
}
