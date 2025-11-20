return {
  "lervag/vimtex",
  lazy = false,
  config = function()
    vim.g.vimtex_view_method = "zathura" 
    vim.g.vimtex_quickfix_mode = 1 
  end,
}
