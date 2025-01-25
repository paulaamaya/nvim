return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  config = function()
    local markdown = require("render-markdown")
    markdown.setup({
      code = {
        width = "block",
      },
      bullet = {
        enabled = false,
      },
      heading = {
        position = "inline",
      }
    })
  end,
}
