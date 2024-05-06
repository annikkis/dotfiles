require("multiple-cursors").setup {
  pre_hook = function()
    vim.g.minipairs_disable = true
  end,
  post_hook = function()
    vim.g.minipairs_disable = false
  end,
}
