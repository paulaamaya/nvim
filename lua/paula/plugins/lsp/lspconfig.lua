return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local keymap = vim.keymap
    local opts = { noremap = true, silent = true }
    local on_attach = function(client, bufnr)
      -- show references
      opts.desc = "Show LSP reference."
      keymap.set("n", "<leader>lR", "<cmd>Telescope lsp_references<CR>", opts)

      -- go to declaration
      opts.desc = "Go to declaration."
      keymap.set("n", "<leader>ld", vim.lsp.buf.declaration, opts)

      -- show lsp definitions
      opts.desc = "Show LSP definition."
      keymap.set("n", "<leader>lD", "<cmd>Telescope lsp_definitions<CR>", opts) 

      -- show lsp implementations
      opts.desc = "Show LSP implementation."
      keymap.set("n", "<leader>lI", "<cmd>Telescope lsp_implementations<CR>", opts) 

      -- show lsp type definitions
      opts.desc = "Show LSP type definition."
      keymap.set("n", "<leader>lT", "<cmd>Telescope lsp_type_definitions<CR>", opts)

      -- restart lsp 
      opts.desc = "Restart LSP."
      keymap.set("n", "<leader>lr", ":LspRestart<CR>", opts) 

      -- see available code actions, in visual mode will apply to selection
      opts.desc = "See code actions."
      keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) 

      -- smart rename
      opts.desc = "Smart rename."
      keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

      -- show file diagnostics
      opts.desc = "Show buffer diagnostics."
      keymap.set("n", "<leader>df", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) 

      -- show line diagnostics
      opts.desc = "Show line diagnostics."
      keymap.set("n", "<leader>dl", vim.diagnostic.open_float, opts)

      -- go to previous diagnostic 
      opts.desc = "Go to previous diagnostic."
      keymap.set("n", "dN", vim.diagnostic.goto_prev, opts) 

      -- go to next  diagnostic
      opts.desc = "Go to next diagnostic."
      keymap.set("n", "dn", vim.diagnostic.goto_next, opts) 

      -- show documentation
      opts.desc = "Show documentation."
      keymap.set("n", "D", vim.lsp.buf.hover, opts) 
    end

    -- NOTE: assign this to every lsp server config
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- diagnostic symbols
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    -- CLANG
    lspconfig["clangd"].setup({
      capabilities=capabilities,
      on_attach=on_attach
    })
  end,
}
