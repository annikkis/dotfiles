local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {
  ui = {
    size = { width = 0.75, height = 0.5 },
    border = "none",
    wrap = true,
  },
}

require("lazy").setup({
  { "annikkis/waldstadt.nvim", lazy = true },
  { "sainnhe/gruvbox-material", lazy = true },
  { "akinsho/bufferline.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
  { "nvim-tree/nvim-tree.lua", dependencies = "nvim-tree/nvim-web-devicons" },
  { "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
  "akinsho/toggleterm.nvim",
  "folke/trouble.nvim",
  "folke/neodev.nvim",
  "j-hui/fidget.nvim",
  {
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-treesitter-textobjects",
    "windwp/nvim-ts-autotag",
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  "brenton-leighton/multiple-cursors.nvim",
  "echasnovski/mini.pairs",
  "numToStr/Comment.nvim",
  {
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
  },
  {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "dcampos/nvim-snippy",
    "dcampos/cmp-snippy",
  },
  {
    { "nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
}, opts)
