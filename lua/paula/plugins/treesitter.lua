return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({ 
      -- syntax highlighting
      highlight = {
        enable = true,
      },
      -- indentation
      indent = { enable = true },
      -- autotagging
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "lua", -- mandatory
        "vim", -- mandatory
        "vimdoc", -- mandatory
        "query", -- mandatory
        "markdown", -- mandatory
        "markdown_inline", -- mandatory
        "latex",
        "c", -- mandatory
        "cpp",
        "python",
        "haskell",
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
