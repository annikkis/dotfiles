require("Comment").setup {
  padding = true,
  sticky = true,
  ignore = "^$",
  toggler = { line = "<leader>/", block = "<leader>?" },
  opleader = { line = "<leader>/", block = "<leader>?" },
  mappings = { basic = true, extra = false },
  pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
}
