return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        defaults = {
            prompt_prefix = "   ",
            selection_caret = "  ",
            entry_prefix = "  ",
            layout_strategy = "horizontal",
        },
    },
}
