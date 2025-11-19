return {
  "rmehri01/onenord.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("onenord").setup({
      theme = "dark",
      fade_nc = true,
      -- Customize the background color
      custom_highlights = {
        Normal = { bg = "#1e222a" }, 
        WinSeparator = { fg = "#81a1c1", bold = true }, 
      },
    })

    vim.cmd("colorscheme onenord")
  end,
}
