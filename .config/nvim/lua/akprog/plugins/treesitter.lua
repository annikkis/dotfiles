require("nvim-treesitter.install").update { with_sync = true }
require("nvim-treesitter.configs").setup {
  modules = {},
  ensure_installed = { "typescript", "tsx", "json", "xml", "html", "scss", "css", "prisma",  "regex", "lua", "vim", "toml" },
  ignore_install = {},
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
    disable = {},
    use_languagetree = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
    disable = {},
  },
}
