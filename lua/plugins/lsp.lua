return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {},
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup()
            local capabailities = require('blink.cmp').get_lsp_capabilities()
            require("lspconfig").lua_ls.setup { capabailities = capabailities }
            require("lspconfig").rust_analyzer.setup { capabailities = capabailities }
            require("lspconfig").pyright.setup { capabailities = capabailities }

            vim.keymap.set("n", "gd", function () vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "K", function () vim.lsp.buf.hover() end, opts)
            vim.keymap.set("n", "<leader>ca", function () vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("n", "<leader>rr", function () vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>rn", function () vim.lsp.buf.rename() end, opts)
            vim.keymap.set("n", "<leader>er", function () vim.diagnostic.open_float() end, opts)
        end,
    }
}
