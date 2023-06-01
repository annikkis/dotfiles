require("mason").setup {
  ui = {
    border = "none",
    width = 0.75,
    height = 0.5,
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
}
