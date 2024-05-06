local o = vim.opt
local g = vim.g

-- encoding
o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.fileformat = "unix"
-- line numbers
o.number = true
o.relativenumber = true
o.numberwidth = 4
-- tabs & indentation
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.autoindent = true
o.expandtab = true
o.smarttab = true
o.smartindent = true
o.breakindent = true
o.copyindent = true
o.cindent = true
-- line wrapping
o.wrap = false
o.textwidth = 160
-- search settings
o.ignorecase = true
o.smartcase = true
o.hlsearch = true
-- cursor line
o.cursorline = true
-- apperarance
o.termguicolors = true
o.background = "dark"
o.guifont = "JetBrainsMono Nerd Font:h10"
o.winblend = 0
o.pumblend = 5
o.signcolumn = "yes"
o.showtabline = 0
o.cmdheight = 1
o.laststatus = 3
-- split windows
o.splitright = true
o.splitbelow = true
o.inccommand = "split"
-- timeouts
o.timeout = true
o.timeoutlen = 1500
o.ttimeout = true
o.ttimeoutlen = 50
o.updatetime = 250
-- backspace
o.backspace = "start,eol,indent"
-- completions
o.completeopt = "menu,menuone,noinsert,noselect"
o.iskeyword:append("-")
-- clipboard
o.clipboard:append("unnamedplus")
-- files
o.undofile = true
o.swapfile = false
-- scrolling
o.scrolloff = 8
-- mouse
o.mouse = "a"
o.mousehide = true
-- shell
o.shell = "zsh"
o.path:append("**")
-- global settings
g.mapleader = " "
g.maplocalleader = " "
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.diagnostic_enable_virtual_text = 1
g.diagnostic_insert_delay = 1
