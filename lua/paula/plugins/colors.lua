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
        Normal = { bg = "#1e222a" }, -- Background color
        WinSeparator = { fg = "#81a1c1", bold = true }, -- Highlight window borders
        -- StatusLine = { bg = "#2e3440", fg = "#d8dee9" }, -- Highlight statusline for active window
        -- StatusLineNC = { bg = "#3b4252", fg = "#4c566a" }, -- Dim statusline for inactive windows
        -- CursorLine = { bg = "#2e3440" }, -- Highlight current line in active window
      },
    })

    vim.cmd("colorscheme onenord")
  end,
}
