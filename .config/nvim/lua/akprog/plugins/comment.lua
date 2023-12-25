require("Comment").setup {
  padding = true,
  sticky = true,
  ignore = "^$",
  toggler = { line = "<leader>/", block = "<leader>?" },
  opleader = { line = "<leader>/", block = "<leader>?" },
  extra = { above = "", below = "", eol = "" },
  mappings = { basic = true, extra = false },
  pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
  post_hook = function (_) end,
}
