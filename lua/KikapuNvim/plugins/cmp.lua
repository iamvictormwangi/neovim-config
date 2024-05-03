return {
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	{
		"L3MON4D3/LuaSnip",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
	"rafamadriz/friendly-snippets",
	"saadparwaiz1/cmp_luasnip",
	"chrisgrieser/cmp_yanky",
	"yochem/cmp-htmx",
	"hrsh7th/cmp-emoji",
	{
		"iamvictormwangi/cmp_rusticflow",
		config = function()
			require("cmp_rusticflow"):setup()
		end,
	},
	{
		"iamvictormwangi/cmp_dictionary",
		config = function()
			require("cmp_dictionary"):setup()
		end,
	},
	"yochem/cmp-htmx",
}
