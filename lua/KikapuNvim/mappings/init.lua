--[[
 __  __                   _
|  \/  | __ _ _ __  _ __ (_)_ __   __ _ ___
| |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
| |  | | (_| | |_) | |_) | | | | | (_| \__ \
|_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
             |_|   |_|            |___/
]]

local g = vim.g
local api = vim.api
local keymap = vim.api.nvim_set_keymap

for _, mapping in ipairs(require("user.mappings")) do
 vim.api.nvim_set_keymap(mapping.mode, mapping.keys, mapping.action, { noremap = true, silent = true })
end

vim.cmd([[command! KikapuReload source ~/.config/nvim/init.lua ]])
vim.cmd([[command! KikapuHome Startify ]])

vim.cmd([[ noremap <leader>c gcc ]])
vim.cmd([[ noremap <leader>r <cmd>KikapuReload<cr> ]])

vim.cmd [[
let g:user_emmet_expandabbr_key='<C-o>'
imap <expr> <C-o> emmet#expandAbbrIntelligent("\<C-o>")
 ]]
