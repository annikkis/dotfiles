local opt = vim.opt
local g = vim.g

-- encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.fileformat = "unix"
-- line numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4
-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.autoindent = true
opt.expandtab = true
opt.smarttab = true
opt.smartindent = true
opt.breakindent = true
opt.copyindent = true
opt.cindent = true
-- line wrapping
opt.wrap = false
opt.textwidth = 160
-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
-- cursor line
opt.cursorline = true
-- apperarance
opt.termguicolors = true
opt.background = "dark"
-- opt.background = "light"
opt.guifont = "Hack Nerd Font:h10"
opt.winblend = 0
opt.pumblend = 5
-- opt.foldcolumn = "3"
opt.signcolumn = "yes"
opt.showtabline = 0
opt.cmdheight = 1
opt.laststatus = 3
-- split windows
opt.splitright = true
opt.splitbelow = true
opt.inccommand = "split"
-- timeouts
opt.timeout = true
opt.timeoutlen = 1500
opt.ttimeout = true
opt.ttimeoutlen = 50
opt.updatetime = 250
-- backspace
opt.backspace = "start,eol,indent"
-- completions
opt.completeopt = "menu,menuone,noinsert,noselect"
opt.iskeyword:append("-")
-- clipboard
opt.clipboard:append("unnamedplus")
-- files
opt.undofile = true
opt.swapfile = false
-- scrolling
opt.scrolloff = 8
-- mouse
opt.mouse = "a"
opt.mousehide = true
-- shell
opt.shell = "zsh"
opt.path:append("**")
-- global settings
g.mapleader = " "
g.maplocalleader = " "
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.diagnostic_enable_virtual_text = 1
g.diagnostic_insert_delay = 1
