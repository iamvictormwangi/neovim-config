return {
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({})
		end,
	},
	{
		"uloco/bluloco.nvim",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			require("bluloco").setup({
				style = "dark", -- "auto" | "dark" | "light"
				transparent = false,
				italics = false,
			})
		end,
	},
	{
		"Mofiqul/vscode.nvim",
		config = function()
			require("vscode").setup({
				style = "dark",
				transparent = false,
				italic_comments = true,
				disable_nvimtree_bg = true,
			})
		end,
	},
	{
		"catppuccin/nvim",
	},
}
