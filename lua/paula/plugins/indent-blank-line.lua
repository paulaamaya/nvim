return {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    main = "ibl",
    opts = {
        indent = {
            highlight = {
                "IndentGrey",
            },
        },
    },
    config = function(_, opts)
        local hooks = require("ibl.hooks")
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "IndentGrey", { fg = "#656565" })
        end)
        require("ibl").setup(opts)
    end,
}
