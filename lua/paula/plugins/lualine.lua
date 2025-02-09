return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("lualine").setup({
      theme = "onenord",
      sections = {
        -- Show relative filepath
        lualine_c = {
          {
            "filename",
            path = 1,
          },
        },
      }, 
    })
  end  
}
