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

require("KikapuNvim.config.cmp")
require("KikapuNvim.config.ibl")
require("KikapuNvim.config.lsp")

vim.cmd [[
autocmd BufNewFile,BufRead *.jinja set filetype=jinja
autocmd FileType jinja setlocal shiftwidth=2 tabstop=2 softtabstop=2
]]

-- require("config.cmp") e
