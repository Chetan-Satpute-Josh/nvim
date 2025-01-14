return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            javascript = { "prettier" },
            javascriptreact = { "prettier" },
            typescript = { "prettier" },
            typescriptreact = { "prettier" },
            html = { "prettier" },
            css = { "prettier" },
            sql = { "sql_formatter" },
            json = { "prettier" },
        },
    },
    default_format_opts = {
        lsp_format = "fallback",
    },
}
