local ensure_installed = { "typescript-language-server", "json-lsp", "html-lsp", "css-lsp", "eslint-lsp", "prisma-language-server", "lua-language-server" }

require("mason").setup {
  ui = {
    border = "none",
    width = 0.75,
    height = 0.5,
    icons = {
      package_installed = ICON_COMMON.check,
      package_pending = ICON_COMMON.arrow_right,
      package_uninstalled = ICON_COMMON.close,
    },
  },
}

vim.api.nvim_create_user_command("MasonInstallAll", function()
  vim.cmd("MasonInstall " .. table.concat(ensure_installed, " "))
end, {})
