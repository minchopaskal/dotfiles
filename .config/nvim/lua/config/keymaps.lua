-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<F5>", function()
    require("dap").continue()
end)
vim.keymap.set("n", "<F10>", function()
    require("dap").step_over()
end)
vim.keymap.set("n", "<F9>", function()
    require("dap").step_into()
end)
vim.keymap.set("n", "<F12>", function()
    require("dap").step_out()
end)
vim.keymap.set("n", "C-<F5>", function()
    require("dap").terminate()
end)

vim.keymap.set(
    "n",
    "<leader>sf",
    ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>"
)

vim.keymap.set("n", "<leader>ac", ":Augment chat<CR>")
vim.keymap.set("n", "<leader>at", ":Augment chat-toggle<CR>")
vim.keymap.set("n", "<leader>an", ":Augment chat-new<CR>")
