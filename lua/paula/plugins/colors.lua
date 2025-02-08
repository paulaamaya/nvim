return {
  "AlexvZyl/nordic.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nordic").setup({
      italic_comments = false,
      transparent = { float = true, },
    })

    vim.cmd("colorscheme nordic") 
  end
}
