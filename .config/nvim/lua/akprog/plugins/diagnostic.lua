local signs = {
  { name = "DiagnosticSignInfo",  text = "" },
  { name = "DiagnosticSignHint",  text = "󰰁" },
  { name = "DiagnosticSignWarn",  text = "" },
  { name = "DiagnosticSignError", text = "" },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, {
    texthl = sign.name,
    text = sign.text,
    numhl = "",
  })
end

vim.diagnostic.config {
  update_in_insert = false,
  virtual_text = {
    spacing = 2,
  },
  underline = true,
  severity_sort = true,
  signs = { active = signs },
  float = {
    source = "always",
    border = "none",
    header = "",
    prefix = "- ",
  },
}
