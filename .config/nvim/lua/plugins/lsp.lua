return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            clangd = {
                cmd = {
                    "clangd",
                    "--header-insertion=never",
                },
                filetypes = { "c", "cpp", "objc", "objcpp" },
                root_dir = require("lspconfig.util").root_pattern("compile_commands.json", ".git"),
                on_attach = function(client, bufnr)
                    client.server_capabilities.documentFormattingProvider = false
                    client.server_capabilities.documentRangeFormattingProvider = false
                    local Keys = require("lazyvim.plugins.lsp.keymaps").get()
                    vim.list_extend(Keys, {
                        {
                            "gd",
                            function()
                                require("telescope.builtin").lsp_definitions({ reuse_win = true })
                            end,
                            desc = "Goto Definition",
                            has = "definition",
                        },
                        {
                            "gr",
                            "<cmd>Telescope lsp_references<cr>",
                            desc = "References",
                            nowait = true,
                        },
                        {
                            "gI",
                            function()
                                require("telescope.builtin").lsp_implementations({
                                    reuse_win = true,
                                })
                            end,
                            desc = "Goto Implementation",
                        },
                        {
                            "gy",
                            function()
                                require("telescope.builtin").lsp_type_definitions({
                                    reuse_win = true,
                                })
                            end,
                            desc = "Goto T[y]pe Definition",
                        },
                    })
                end,
            },
        },
    },
}
