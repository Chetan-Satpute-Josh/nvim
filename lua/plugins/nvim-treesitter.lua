return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {},
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
        },
    },
    dependencies = {
        { "windwp/nvim-ts-autotag", lazy = false, opts = {} },
        "nvim-treesitter/nvim-treesitter-context",
    },
}

