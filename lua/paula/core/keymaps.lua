-- set leader to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- use jk to exit insert mode 
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk." })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number." }) 
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number." })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically." })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally." })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size." })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split." })

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab." }) 
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab." }) 
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab." }) 
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab." }) 
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab." }) 

-- terminal management
keymap.set("n", "<leader>cv", "<cmd>vsplit | term<CR>", { desc = "Open terminal in vertical split." })
keymap.set("n", "<leader>ch", "<cmd>split | term<CR>", { desc = "Open terminal in horizontal split." })
keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal insert mode." })

-- Redo
vim.keymap.set("n", "U", '<cmd>redo<CR>', { desc = "Redo" })
