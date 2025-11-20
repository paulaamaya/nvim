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
        Normal = { bg = "#1E222A" }, 
        WinSeparator = { fg = "#81A1C1", bold = true }, 
      },
    })

    vim.cmd("colorscheme onenord")
  end,
}
