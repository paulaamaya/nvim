-- tree file explorer
vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- disable line wrapping
opt.wrap = true

-- ignore case when searching, except when mixed
opt.ignorecase = true
opt.smartcase = true 

-- cursor line
opt.cursorline = true

-- terminal gui colors
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- use system clipboard as default register
opt.clipboard:append("unnamedplus")

-- split vertical window to the right
opt.splitright = true 
-- split horizontal window to the bottom
opt.splitbelow = true 

-- turn off swapfile
opt.swapfile = false

