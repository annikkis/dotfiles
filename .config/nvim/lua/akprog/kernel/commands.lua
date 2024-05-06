vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
  pattern = "*",
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_user_command("RelativePath", function()
  local path = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
  vim.fn.setreg("+", path)
  vim.notify("Copied \"" .. path .. "\" to the clipboard")
end, {})
