local server_settings = require("config.lsp.server-settings")

return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local mason_lspconfig = require("mason-lspconfig")

        mason_lspconfig.setup({
            ensure_installed = { "lua_ls", "ts_ls", "eslint", "jsonls", "cssls" },
        })

        local function on_attach(_, bufnr)
            vim.keymap.set("n", "gd", require("telescope.builtin").lsp_definitions, { buffer = bufnr })
            vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, { buffer = bufnr })
            vim.keymap.set("n", "gI", require("telescope.builtin").lsp_implementations, { buffer = bufnr })
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr })
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr })
        end

        mason_lspconfig.setup_handlers({
            function(server_name)
                require("lspconfig")[server_name].setup({
                    on_attach = on_attach,
                    capabilities = capabilities,
                    settings = server_settings[server_name],
                })
            end,
        })
    end,
}
