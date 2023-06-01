require("nvim-treesitter.install").update { with_sync = true }
require("nvim-treesitter.configs").setup {
  ensure_installed = { "cpp", "c", "rust", "make", "typescript", "tsx", "json", "html", "scss", "css", "regex", "lua", "vim" },
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
    disable = {},
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}
