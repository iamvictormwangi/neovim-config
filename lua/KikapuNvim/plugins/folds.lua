return {
	{
		"anuvyklack/fold-preview.nvim",
		config = function()
			require("fold-preview").setup()
		end,
	},
	{
		"anuvyklack/pretty-fold.nvim",
		config = function()
			require("pretty-fold").setup()
		end,
	},
	"kevinhwang91/nvim-ufo"
}
