require("nvim-autopairs").setup {
  enable_moveright = true,
  enable_afterquote = true,
  disable_in_macro = true,
  ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=]
}
