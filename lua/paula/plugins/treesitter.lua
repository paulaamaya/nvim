return {
  "nvim-treesitter/nvim-treesitter",
  event = {"BufReadPre", "BufNewFile"},
  -- add markdown.nvim as treesitter module
  dependencies = {"tadmccorkle/markdown.nvim"},
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({ 
      -- syntax highlighting
      highlight = {
        enable = true,
      },
      -- indentation
      indent = { enable = true },
      ensure_installed = {
        "lua", -- mandatory
        "vim", -- mandatory
        "vimdoc", -- mandatory
        "query", -- mandatory
        "markdown", -- mandatory
        "markdown_inline", -- mandatory
        "latex",
        "html",
        "c", -- mandatory
        "cpp",
        "cmake",
        "python",
        "haskell",
        "asm",
      },
      markdown = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
