-- Leader
vim.g.mapleader = " "

-- Keymap
local keymap = vim.keymap


-- ====== CORE ======
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) 
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })
-- redo
vim.keymap.set("n", "U", '<cmd>redo<CR>', { desc = "Redo" })
-- delete single character without copying into register
keymap.set("n", "x", '"_x')
-- new lines without going into edit mode
vim.keymap.set("n", "go", "o<esc>")
vim.keymap.set("n", "gO", "O<esc>")
-- move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- format file
keymap.set({ "n", "v" }, "<leader>fm", function()
  -- Check if an LSP client is attached to the current buffer
  if vim.lsp.buf_get_clients(0) then
    -- Request formatting from the attached LSP client
    -- { async = true } makes it non-blocking, so Neovim remains responsive
    vim.lsp.buf.format({ async = true })
  else
    print("No LSP client attached to this buffer for formatting")
  end
end, { desc = "LSP: Format current buffer/selection" })

-- Window Management <leader>s
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tab Management <leader>t
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) 
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) 
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) 
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) 
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) 

-- Terminal Management <leader>c
keymap.set("n", "<leader>cv", "<cmd>vsplit | term<CR>", { desc = "Open terminal in vertical split" })
keymap.set("n", "<leader>ch", "<cmd>split | term<CR>", { desc = "Open terminal in horizontal split" })
keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal insert mode" })


-- ====== NVIM TREE <leader>e ======
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) 
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) 


-- ====== TELESCOPE <leader>f ======
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in pwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in pwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in pwd" })
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

