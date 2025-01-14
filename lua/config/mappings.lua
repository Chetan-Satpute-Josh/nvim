-- Conform
local conform = require("conform")

vim.keymap.set("n", "<leader>fm", conform.format)

-- LSP
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- Telescope
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", telescope.find_files)
vim.keymap.set("n", "<leader>lg", telescope.live_grep)

-- Nvim tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeOpen<cr>")

-- Custom
vim.keymap.set("n", "<leader>w", "<C-w>")
vim.keymap.set("n", "<leader>gh", "<cmd>diffget //2<cr>")
vim.keymap.set("n", "<leader>gl", "<cmd>diffget //3<cr>")

