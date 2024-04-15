require 'mapx'.setup { global = "force", whichkey = true }

local g = vim.g
local api = vim.api
local keymap = vim.api.nvim_set_keymap

nnoremap("j", "v:count ? 'j' : 'gj'", "expr")
nnoremap("k", "v:count ? 'k' : 'gk'", "expr")

nnoremap("s", ".")

--nmap("J", "5j")
--nmap("K", "5k")

--[[mapx.map(...)                                                     *mapx.map()*]]
--[[mapx.nmap(...)                                                   *mapx.nmap()*]]
--[[mapx.vmap(...)                                                   *mapx.vmap()*]]
--[[mapx.xmap(...)                                                   *mapx.xmap()*]]
--[[mapx.smap(...)                                                   *mapx.smap()*]]
--[[mapx.omap(...)                                                   *mapx.omap()*]]
--[[mapx.imap(...)                                                   *mapx.imap()*]]
--[[mapx.lmap(...)                                                   *mapx.lmap()*]]
--[[mapx.cmap(...)                                                   *mapx.cmap()*]]
--[[mapx.tmap(...)                                                   *mapx.tmap()*]]

--[[`noremap` variants are also available. These functions are the same as their]]
--[[normal counterpart above but they merge `{opts}` with `{ noremap = true }`:]]

--[[mapx.noremap(...)                                             *mapx.noremap()*]]
--[[mapx.nnoremap(...)                                           *mapx.nnoremap()*]]
--[[mapx.vnoremap(...)                                           *mapx.vnoremap()*]]
--[[mapx.xnoremap(...)                                           *mapx.xnoremap()*]]
--[[mapx.snoremap(...)                                           *mapx.snoremap()*]]
--[[mapx.onoremap(...)                                           *mapx.onoremap()*]]
--[[mapx.inoremap(...)                                           *mapx.inoremap()*]]
--[[mapx.lnoremap(...)                                           *mapx.lnoremap()*]]
--[[mapx.cnoremap(...)                                           *mapx.cnoremap()*]]
--[[mapx.tnoremap(...)                                           *mapx.tnoremap()*]]

--[[Mapx also offers "bang" (|:map!| and |:noremap!|) variants:              *mapx-bang*]]

--[[mapx.mapbang(...)                                             *mapx.mapbang()*]]
--[[mapx.noremapbang(...)                                     *mapx.noremapbang()*]]
