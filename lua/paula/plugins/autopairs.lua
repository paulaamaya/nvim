return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    local autopairs = require("nvim-autopairs")

    autopairs.setup({
      -- enable treesitter
      check_ts = true,
      map_cr = true,    -- autocomplete pairs on <CR>
      map_bs = true,    -- delte pairs on <BS>
      ts_config = {
        c = { "string", "comment"},
        cpp = { "string", "comment"},
        haskell = { "string", "comment"},
        lua = { "string" }, 
        javascript = { "template_string" }, 
      },
    })

    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    -- make autopairs and completion work together
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}

