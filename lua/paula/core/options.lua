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
--
-- Enable filetype detection
vim.cmd('filetype plugin indent on')

-- Set indentation rules for assembly
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "asm", "nasm", "masm", "s" }, -- Filetypes for assembly
  callback = function()
    -- Set indentation options
    vim.opt_local.tabstop = 8       -- Number of spaces a tab counts for
    vim.opt_local.shiftwidth = 8    -- Number of spaces to use for each step of (auto)indent
    vim.opt_local.softtabstop = 8   -- Number of spaces a tab counts for while editing
    vim.opt_local.expandtab = false -- Use tabs instead of spaces
    vim.opt_local.autoindent = true -- Copy indent from current line when starting a new line
    vim.opt_local.smartindent = true -- Do smart autoindenting when starting a new line
    end,
})
