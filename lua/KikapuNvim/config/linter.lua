vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    for _, linter in ipairs(require("user.linters")) do
      require("lint").try_lint(linter)
    end
  end,
})
