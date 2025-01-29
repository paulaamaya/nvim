return {
    "wallpants/github-preview.nvim",
    opts = {
        single_file = true,
    },
    config = function(_, opts)
    local gpreview = require("github-preview")
    gpreview.setup(opts)

    -- set keymaps
    local fns = gpreview.fns
    local keymap = vim.keymap
    keymap.set("n", "<leader>mt", fns.toggle, { desc = "Toggle markdown preview." })
    keymap.set("n", "<leader>ms", fns.single_file_toggle, { desc = "Start markdown preview." })
    keymap.set("n", "<leader>md", fns.details_tags_toggle, { desc = "Stop markdown preview." })
    end,
}
