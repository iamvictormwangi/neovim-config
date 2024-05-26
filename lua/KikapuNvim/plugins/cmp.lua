return {
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
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
}
