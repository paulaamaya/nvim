vim.g.mapleader = " "
vim.g.maplocalleader = "\\" -- Crucial for VimTex (triggers with \l...)

local keymap = vim.keymap

-- ====== GENERAL ======
-- Increment/Decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) 
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Better Redo
keymap.set("n", "U", "<cmd>redo<CR>", { desc = "Redo" })

-- Delete without yank
keymap.set("n", "x", '"_x')

-- Insert new lines without entering insert mode
keymap.set("n", "go", "o<esc>")
keymap.set("n", "gO", "O<esc>")

-- Move lines up and down 
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- ====== WINDOW MANAGEMENT (<leader>w) ======
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" })

-- ====== TAB MANAGEMENT (<leader>t) ======
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) 
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) 
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) 
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) 
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) 

-- ====== TERMINAL MANAGEMENT (<leader>o) ======
keymap.set("n", "<leader>ov", "<cmd>vsplit | term<CR>", { desc = "Open terminal vertical" })
keymap.set("n", "<leader>oh", "<cmd>split | term<CR>", { desc = "Open terminal horizontal" })
keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal insert mode" })

-- ====== FILE EXPLORER (<leader>e) ======
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Find file in explorer" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse explorer" }) 
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh explorer" }) 

-- ====== TELESCOPE (<leader>f) ======
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor" })
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
