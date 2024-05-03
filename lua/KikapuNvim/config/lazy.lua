local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("KikapuNvim.plugins")
require("lazy").setup("KikapuNvim.config.cmp")
require("lazy").setup("KikapuNvim.config.ibl")
require("lazy").setup("KikapuNvim.config.lsp")
require("lazy").setup("KikapuNvim.config.lsp_signatures")
-- require("config.cmp") e
