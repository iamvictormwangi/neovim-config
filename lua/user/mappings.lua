-- Add your mapping here

-- Example
-- { mode = "n", keys = "<leader>q", action = "<cmd>q<cr>" },

return {
  { mode = "n", keys = "<leader>q",        action = "<cmd>q<cr>" },
  { mode = "n", keys = "<leader>w",        action = "<cmd>w<cr>" },
  { mode = "v", keys = "<Tab>",            action = "g>>" },
  { mode = "n", keys = "<Tab>",            action = ">>" },
  { mode = "v", keys = ">",                action = ">gv" },
  { mode = "v", keys = "<",                action = "<gv" },
  { mode = "n", keys = "t",                action = "t" },
  { mode = "n", keys = "S",                action = "@p" },
  { mode = "n", keys = "s",                action = "." },
  { mode = "n", keys = "<leader>e",        action = "<cmd>NvimTreeToggle<cr>" },
  { mode = "n", keys = "<leader>t",        action = "<cmd>ToggleTerm<cr>" },
  { mode = "n", keys = "<leader>f",        action = "<cmd>Telescope<cr>" },
  { mode = "n", keys = "<leader>n",        action = "<C-w>w" },
  { mode = "n", keys = "<leader>l",        action = "<cmd>bn<cr>" },
  { mode = "n", keys = "<leader>h",        action = "<cmd>bp<cr>" },
  { mode = "n", keys = "<leader>c",        action = "gcc" },
  { mode = "n", keys = "<leader>r",        action = "<cmd>KikapuReload<cr>" },
  { mode = "n", keys = "<cr>",             action = "o<esc>" },
  { mode = "n", keys = "0",                action = "g0" },
  { mode = "n", keys = "$",                action = "g$" },
  { mode = "n", keys = "k",                action = "gkzz" },
  { mode = "n", keys = "j",                action = "gjzz" },
  { mode = "v", keys = "k",                action = "kzz" },
  { mode = "v", keys = "j",                action = "jzz" },
  { mode = "n", keys = "n",                action = "nzz" },
  { mode = "n", keys = "N",                action = "Nzz" },
  { mode = "n", keys = "G",                action = "Gzz" },
  { mode = "c", keys = "jj",               action = "<cr>" },
  { mode = "n", keys = "<leader><leader>", action = "<cmd>WhichKey<cr>" },
  { mode = "n", keys = "<leader>p",        action = "<cmd>%!prettier --print-width=100 --tab-width=2 --semi=true --stdin-filepath=%<Cr>" },
  { mode = "n", keys = "<c-k>",            action = "<c-y>" },
  { mode = "n", keys = "<c-j>",            action = "<c-e>" },
}